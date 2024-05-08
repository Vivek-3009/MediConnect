<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Medi-Connect</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <link rel="stylesheet" href="styles.css" />
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
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
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#about">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact-social">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link btn bg-danger text-white" href="signup.jsp">Sign Up</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Patient Dashboard -->
  <section id="patient-dashboard" class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-left mb-4">
          <h2>User Information:</h2>
          <p>Name: <%= session.getAttribute("name") %>/p>
          <p>Email: <%= session.getAttribute("email") %></p>
          <p>Age: 30</p>
        </div>
        <div class="col-md-3">
          <button class="btn btn-primary btn-block mb-3">View all doctors</button>
        </div>
        <div class="col-md-3">
          <button class="btn btn-primary btn-block mb-3">Book Appointment</button>
        </div>
        <div class="col-md-3">
          <button class="btn btn-success btn-block mb-3">Add Patients</button>
        </div>
        <div class="col-md-3">
          <button class="btn btn-info btn-block mb-3">Give Feedback</button>
        </div>
      </div>
    </div>
  </section>
  

  <!-- Contact and Social Media Sections -->
  <section id="contact-social" class="bg-dark text-white py-4">
    <div class="container">
      <div class="row">
        <!-- Contact Section -->
        <div class="col-md-6">
          <h5>Contact Us</h5>
          <a href="mailto:info@medi-connect.com">Email: info@medi-connect.com</a>
          <p>Phone: +1 123-456-7890</p>
        </div>
        <!-- Social Media Links Section -->
        <div class="col-md-6">
          <h5>Follow Us</h5>
          <p>Stay updated with our latest news and updates on social media:</p>
          <ul class="list-inline">
            <li class="list-inline-item">
              <a href="#" class="text-white">Facebook</a>
            </li>
            <li class="list-inline-item">
              <a href="#" class="text-white">Twitter</a>
            </li>
            <li class="list-inline-item">
              <a href="#" class="text-white">Instagram</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="scripts.js"></script>
</body>
</html>
