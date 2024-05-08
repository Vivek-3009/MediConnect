<html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Medi-Connect</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
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
              <a class="nav-link btn bg-danger text-white" href="signup"
                >Sign Up</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-6">
          <h1 class="display-4 mb-4">Welcome to Medi-Connect</h1>
          <p class="lead">
            Your trusted platform for seamless healthcare access and
            appointments.
          </p>

          <p>
            Connect with trusted healthcare providers in your area, explore
            their profiles, and book appointments that fit your schedule. Take
            control of your healthcare journey today!
          </p>
          <a href="login" class="mb-4 btn-danger btn-lg"
            >Book Appointment</a
          >
        </div>
        <div class="mt-5 col-md-6">
          <img
            src="https://tse4.mm.bing.net/th/id/OIP.FSNGTYHhVT9KLbtrD7m-wQHaE8?rs=1&pid=ImgDetMain"
            alt="Healthcare Image"
            class="img-fluid rounded shadow-lg"
          />
        </div>
      </div>
    </div>

    <!-- About Content -->
    <!-- About Us Section -->
    <section id="about" class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h2 class="display-4 mb-4">About Us</h2>
            <p class="lead">
              At Medi-Connect, we are passionate about revolutionizing
              healthcare access. Our mission is to provide a seamless platform
              where patients can connect with trusted healthcare providers and
              easily schedule appointments online.
            </p>
            <p>
              We understand the importance of convenient access to healthcare
              services, which is why we've created a user-friendly platform that
              prioritizes simplicity and efficiency.
            </p>
            <p>
              With Medi-Connect, you can say goodbye to long wait times and
              tedious appointment booking processes. We believe that everyone
              deserves access to quality healthcare, and we're committed to
              making that a reality.
            </p>
          </div>
          <div class="col-lg-6">
            <img
              src="https://www.healthrecoverysolutions.com/hubfs/virtual%20telehealth.jpeg#keepProtocol"
              alt="About Us Image"
              class="img-fluid rounded shadow"
            />
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
            <a href="mailto:info@medi-connect.com"
              >Email: info@medi-connect.com</a
            >
            <p>Phone: +1 123-456-7890</p>
          </div>
          <!-- Social Media Links Section -->
          <div class="col-md-6">
            <h5>Follow Us</h5>
            <p>
              Stay updated with our latest news and updates on social media:
            </p>
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
