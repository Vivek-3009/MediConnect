<html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up - Medi-Connect</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="styles.css" />
    <!-- Assuming you have a separate CSS file for styles -->
  </head>
  <body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">Medi-Connect</a>
      </div>
    </nav>
    <div class="container">
      <h2 class="text-center my-4">Sign Up</h2>
      <form action="signup" method="post" >
        <div class="form-group">
          <label for="role">Select Role:</label>
          <select class="form-control" id="role" name="role" required>
            <option value="patient">Patient</option>
            <option value="doctor">Doctor</option>
          </select>
          <div class="invalid-feedback">Please select a role.</div>
        </div>
        <div class="form-group">
          <label for="name">Full Name:</label>
          <input
            type="text"
            class="form-control"
            id="name"
            name="name"
            required
          />
          <div class="invalid-feedback">Please enter your full name.</div>
        </div>
        <div class="form-group">
          <label for="name">Phone Number:</label>
          <input
            type="text"
            class="form-control"
            id="phone-number"
            name="phone-number"
            required
          />
          <div class="invalid-feedback">Please enter valid phone number.</div>
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input
            type="email"
            class="form-control"
            id="email"
            name="email"
            required
          />
          <div class="invalid-feedback">Please enter a valid email.</div>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input
            type="password"
            class="form-control"
            id="password"
            name="password"
            required
          />
          <div class="invalid-feedback">Please enter a password.</div>
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm Password:</label>
          <input
            type="password"
            class="form-control"
            id="confirmPassword"
            name="confirmPassword"
            required
          />
          <div class="invalid-feedback">Please confirm your password.</div>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
      </form>
      <p class="text-center mt-3">
        Already have an account? <a href="login.jsp">Login</a>
      </p>
    </div>

    <script>
      // Form validation using HTML5 Constraint API
      (function () {
        "use strict";
        window.addEventListener(
          "load",
          function () {
            var form = document.getElementById("signupForm");
            form.addEventListener(
              "submit",
              function (event) {
                if (!form.checkValidity()) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                if (form.password.value !== form.confirmPassword.value) {
                  form.confirmPassword.setCustomValidity(
                    "Passwords do not match"
                  );
                } else {
                  form.confirmPassword.setCustomValidity("");
                }
                form.classList.add("was-validated");
              },
              false
            );
          },
          false
        );
      })();
    </script>
  </body>
</html>
