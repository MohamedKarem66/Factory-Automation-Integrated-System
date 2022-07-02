<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="Factory_Automation_Integrated_System.Sign_Out" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/all.css" />
    <link rel="stylesheet" href="CSS/brands.css" />
    <link rel="stylesheet" href="CSS/bootstrap-grid.css" />
    <link rel="stylesheet" href="CSS/bootstrap-reboot.css" />
    <link rel="stylesheet" href="CSS/bootstrap.css" />
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
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
        .auto-style1 {
            --bs-bg-opacity: 1;
            background: #e3b04b;
        }
    </style>
    <link href="CSS/form-validation.css" rel="stylesheet"/>
    <link rel="stylesheet" href="CSS/style1.css"/>
	<link href="CSS/font-awesome.min.css" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext"
	 rel="stylesheet"/>
</head>
<body class="bg-light">
    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2>Sign Up form</h2>
                    <p class="lead">Be sure to sign up for my free newsletter!</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url('https://localhost:44332/Images/bg-1.jpg');">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h4 class="mb-3">Factory Sign Up</h4>
			      		</div>
			      	</div>
							<form id="form1" runat="server">
			      		<div class="form-group mb-3">
			      			<label for="firstName" class="form-label">Name
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="firstName"></asp:RequiredFieldValidator>
			      			</label>
                <asp:TextBox ID="firstName" runat="server" type="text" class="form-control" placeholder="Enter your Name."></asp:TextBox>
			      		</div>
		            <div class="form-group mb-3">
		            	<label for="email" class="form-label">Email
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
		            	</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
             <asp:TextBox ID="email" runat="server" type="email" class="form-control" placeholder="you@example.com"></asp:TextBox>
              </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="username" class="form-label">User Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                            </label>
                <asp:TextBox ID="username" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3">
                            <label for="city" class="form-label">city 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                            </label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_name" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [city]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group mb-3">
                            <label for="address" class="form-label">Address 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="address"></asp:RequiredFieldValidator>
                            </label>
                <asp:TextBox ID="address" runat="server" type="text" class="form-control" placeholder="1234 Main St"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3">
                        <label for="Mobile" class="form-label">Mobile 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Mobile"></asp:RequiredFieldValidator>
                            </label>
                <asp:TextBox ID="Mobile" runat="server" type="number" class="form-control" placeholder="01234567890"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3">
                        <label for="Password" class="form-label">Password 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                            </label>
                <asp:TextBox ID="Password" runat="server" type="Password" class="form-control" placeholder="More than 6 character" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3">
                        <label for="Password" class="form-label">Conferm Password
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="TextBox1" ErrorMessage="No Matching, Retype !!" ForeColor="Maroon">No Matching, Retype !!</asp:CompareValidator>
                  </label>
                <asp:TextBox ID="TextBox1" runat="server" type="Password" class="form-control" placeholder="Conferm Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="bg-primary" Width="393px"/>
                        <hr class="my-4" />
		            <div class="form-group">
		            	<asp:Button ID="Button1" runat="server" class="w-100 btn btn-primary btn-lg" type="submit" Text="Continue to Sign Up" OnClick="Button1_Click" />
              <br />
              <asp:Label ID="Label1" runat="server"></asp:Label>
		            </div>
		                    </form>
		          <p class="text-center">Alredy, have an Account?<a data-toggle="tab" href="Sign In.aspx">Sign In</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
    <footer class="container">
        <p class="text-black text-center">© Powered By FUE Team © 2022 - Company. - <a href="Index Page.aspx">Privacy</a> - <a href="Index Page.aspx">Terms</a></p>
    </footer>
    <script src="JS/bootstrap.bundle.min.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="JS/form-validation.js"></script>
    <script src="JS/main.js"></script>
    <script src="JS/popper.js"></script>
    <script src="JS/jquery.min.js"></script>
</body>
</html>