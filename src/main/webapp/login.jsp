<html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - Medi-Connect</title>
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
      <h2 class="text-center my-4">Login</h2>
      <form action="login" method="post" >
        <div class="form-group">
          <label for="role">Select Role:</label>
          <select class="form-control" id="role" name="role" required>
            <option value="patient">Patient</option>
            <option value="doctor">Doctor</option>
          </select>
          <div class="invalid-feedback">Please select a role.</div>
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
        <button type="submit" class="btn btn-primary btn-block">Login</button>
      </form>
      <p class="text-center mt-3">
        Don't have an account? <a href="signup.jsp">Sign Up</a>
      </p>
    </div>

    <script>
      // Form validation using HTML5 Constraint API
      (function () {
        "use strict";
        window.addEventListener(
          "load",
          function () {
            var form = document.getElementById("loginForm");
            form.addEventListener(
              "submit",
              function (event) {
                if (!form.checkValidity()) {
                  event.preventDefault();
                  event.stopPropagation();
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
