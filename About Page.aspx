<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Page.aspx.cs" Inherits="Factory_Automation_Integrated_System.About_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Factory Automation</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/all.css" />
    <link rel="stylesheet" href="CSS/brands.css" />
    <link rel="stylesheet" href="CSS/bootstrap-grid.css" />
    <link rel="stylesheet" href="CSS/bootstrap-reboot.css" />
    <link rel="stylesheet" href="CSS/bootstrap.css" />
    <link href="CSS/carousel.css" rel="stylesheet"/>
<link href="./Carousel Template · Bootstrap v5.1_files/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32"/>
    <meta name="theme-color" content="#7952b3"/>
    <link href="./Carousel Template · Bootstrap v5.1_files/carousel.css" rel="stylesheet"/>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
</head>
<body class=" bg-dark">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="Index Page.aspx">Factory Automation</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Index Page.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Sign In.aspx">Sign In</a>
                    </li>
                    <li class="nav-item">   
                      <a class="nav-link" href="Sign Up.aspx">Sign Up</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="About Page.aspx">About</a>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
<main>
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/5-Essential-Types-of-Purses-for-Every-Occasion.jpeg" /></svg>

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Welcome to Factory Automation System.</h1>
            <p>The system is intended for customers, Admin and supervisors. The System has some functions that will give you enough of the things you need to do.</p>
            <p><a class="btn btn-lg btn-primary" href="Sign Up.aspx">Sign up today</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/mk.jpg" /></svg>

        <div class="container">
          <div class="carousel-caption">
            <h2>Customer</h2>
        <p>Customer can Edit or Manage his Account. Another featurette? Of course. Customer can make an order.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/images4.jpg" /></svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <h1>And lastly, Maneger.</h1>
            <p>And yes, the manager can Review All Process at any time.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Admin</title><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/download (1).png" /></svg>

        <h2>Customer</h2>
        <p>Customer can Edit or Manage his Account. Another featurette? Of course. Customer can make an order.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Admin</title><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/download (1).png" /></svg>

        <h2>Admin</h2>
        <p>Admin can Review All Account and Approval the new Account of Customer and his orders.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Admin</title><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/download (1).png" /></svg>

        <h2>And lastly, Maneger.</h2>
        <p>And yes, the manager can Review All Process at any time.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div>
        </div>
      </div>
  <!-- FOOTER -->
  <footer class="container">
    <p class="float-end"><a href="About Page.aspx">Back to top</a></p>
    <p>© Powered By FUE Team © 2022 - Company. · <a href="Index Page.aspx">Privacy</a> · <a href="Index Page.aspx">Terms</a></p>
  </footer>
</main>
    <script src="JS/bootstrap.bundle.min.js"></script>
</body>
</html>