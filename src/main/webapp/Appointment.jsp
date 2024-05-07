<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Appointment Booking</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="#">Medi-Connect</a>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="#about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#contact-social">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link btn bg-danger text-white" href="signup.html">Sign Up</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h3 class="card-title text-center mb-4">Book an Appointment</h3>
            <form action="<%= request.getContextPath() %>/bookAppointment" method="post">
              <div class="mb-3">
                <label for="patient" class="form-label">Select Patient</label>
                <select class="form-select" id="patient" name="patientID" required>
                  <c:forEach var="patient" items="${patientList}">
                    <option value="${patient.patientID}">${patient.name}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="mb-3">
				    <label for="age" class="form-label">Age</label>
				    <input type="number" class="form-control" id="age" name="age" required>
				</div>
      
              <div class="mb-3">
                <label for="datetime" class="form-label">Appointment Date and Time</label>
                <input type="datetime-local" class="form-control" id="datetime" name="datetime" required>
              </div>
              <div class="mb-3">
                <label for="doctor" class="form-label">Select Doctor</label>
                <select class="form-select" id="doctor" name="doctorID" required>
                  <c:forEach var="doctor" items="${doctorList}">
                    <option value="${doctor.doctorID}">${doctor.name}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="mb-3">
                <label for="reason" class="form-label">Reason for Appointment</label>
                <textarea class="form-control" id="reason" name="reason" rows="3" required></textarea>
              </div>
              <div class="mb-3">
				    <label for="insurance" class="form-label">Insurance Number</label>
				    <input type="text" class="form-control" id="insurance" name="insurance" required>
				</div>
              
              <div class="d-grid">
                <button type="submit" class="btn btn-primary">Book Appointment</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
