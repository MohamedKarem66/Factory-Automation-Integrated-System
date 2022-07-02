<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign In Manager.aspx.cs" Inherits="Factory_Automation_Integrated_System.Sign_In_Maneger" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8" />
    <title>Sign In</title>
	<link href="./Carousel Template · Bootstrap v5.1_files/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
	<link rel="stylesheet" href="CSS/style1.css"/>
	<link href="CSS/font-awesome.min.css" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext"
	 rel="stylesheet"/>
</head>
<body class="bg-light">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(images/bg-1.jpg);">
						</div>
						<div class="login-wrap p-4 p-md-5">
			      			<div class="d-flex">
			      				<div class="w-100">
			      					<h3 class="mb-4">Welcome Manager</h3>
			      				</div>
			      			</div>
							<form action="#" class="signin-form" runat="server">
			      				<div class="form-group mb-3">
			      					<label class="label" for="name">Username</label>
									<asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
			      				</div>
								<div class="form-group mb-3">
		            				<label class="label" for="password">Password</label>
									<asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
								</div>
								<div class="form-group">
									<asp:Button ID="Button1" runat="server" type="submit" class="form-control btn btn-primary rounded submit px-3" Text="Sign In" OnClick="Button1_Click" />
								</div>
								<div class="form-group d-md-flex">
									<div class="w-50 text-left">
			            				<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
											<input type="checkbox" />
											<span class="checkmark">

											</span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
								</div>
								<div class="w-50 text-left">
										<asp:Label ID="Label1" runat="server" class="checkbox-wrap checkbox-primary mb-0" Text=""></asp:Label>
								</div>
							</form>
							</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
