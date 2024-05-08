//package mediconnect.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//import com.virtusa.mediconnect.utility.Converter;
//import com.virtusa.mediconnect.utility.DBUtil;
//
//import mediconnect.entity.Appointment;
//import mediconnect.service.DataSource;
//
//public class AppointmentDAO {
//	private static final String INSERT_APPOINTMENT_SQL = "INSERT INTO appointments (name, phone, datetime, doctor, reason) VALUES (?, ?, ?, ?, ?)";
//
//	public void insertAppointment(Appointment appointment) {
//		try (Connection connection = DBUtil.getConnection();
//				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_APPOINTMENT_SQL)) {
//
//			preparedStatement.setString(1, appointment.getPatientName());
//			preparedStatement.setString(2, appointment.getPhone());
//			preparedStatement.setTimestamp(3, Converter.convertUtilDateToSqlTimestamp(appointment.getDatetime()));
//			preparedStatement.setString(4, appointment.getDoctorName());
//			preparedStatement.setString(5, appointment.getReason());
//			preparedStatement.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
//}
