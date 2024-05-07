package mediconnect.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mediconnect.model.Appointment;
import mediconnect.service.AppointmentsService;
import mediconnect.utility.Converter;
import mediconnect.utility.ResourceLoader;

@WebServlet("/bookAppointment")
public class AppointmentServlet extends HttpServlet {
	public static String DATE_FORMAT = "DATE_FORMAT";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String  = request.getParameter("name");
		String age = request.getParameter("age");
		String datetime = request.getParameter("datetime");
		String doctor = request.getParameter("doctor");
		String reason = request.getParameter("reason");
		
		Appointment appointment = new Appointment();
		try {
			appointment.setDatetime(Converter.convertStringToDate(datetime, ResourceLoader.properties.getString(DATE_FORMAT)));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		appointment.setDoctorName(doctor);
		appointment.setReason(reason);
		
		AppointmentsService appointmentsService = new AppointmentsService();
		appointmentsService.insertAppointment(appointment);

		// Send response
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Appointment Booked</h1>");
		out.println("<p>Name: " + name + "</p>");
		out.println("<p>Phone: " + phone + "</p>");
		out.println("<p>Date and Time: " + datetime + "</p>");
		out.println("<p>Doctor: " + doctor + "</p>");
		out.println("<p>Reason: " + reason + "</p>");
		out.println("</body></html>");
	}
}
