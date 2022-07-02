<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="Portfolio Page.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.Protfolio_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/icon-font.min.css">
	<link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
	<link rel="stylesheet" type="text/css" href="../CSS/animate.css">
	<link rel="stylesheet" type="text/css" href="../CSS/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <title>Portfolio Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-contact100">
		    <div class="wrap-contact100">
			    <span class="contact100-form-title">
					Portfolio
				</span>
			    <asp:Image ID="Image1" runat="server" style="background-image: url('');" width="350px" height="211px" class="d-block mx-auto mb-4"/>
				<div class="wrap-input100 validate-input">
                    <label for="username" class="form-label">Name
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>
                    </label>
                    <asp:TextBox ID="Name" runat="server" type="text" class="form-control" placeholder="Name" Enabled="False"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="username" class="form-label">Mobile
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Mobile"></asp:RequiredFieldValidator>
                    </label>
                    <asp:TextBox ID="Mobile" runat="server" type="text" class="form-control" placeholder="Mobile" Enabled="False"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="username" class="form-label">Address
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Address"></asp:RequiredFieldValidator>
                    </label>
                    <asp:TextBox ID="Address" runat="server" type="text" class="form-control" placeholder="Address" Enabled="False"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="username" class="form-label">User Name
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                    </label>
                    <asp:TextBox ID="username" runat="server" type="text" class="form-control" placeholder="Username" Enabled="False"></asp:TextBox>
                    </div>
	      		<div class="wrap-input100 validate-input">
	            	<label for="email" class="form-label">Email
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
	            	</label>
                <div class="wrap-input100 validate-input">
                    <span class="input-group-text">@</span>
                    <asp:TextBox ID="email" runat="server" type="email" class="form-control" placeholder="you@example.com" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="wrap-input100 validate-input">
                <label for="Password" class="form-label">Password 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                </label>
                <asp:TextBox ID="Password" runat="server" type="Password" class="form-control" placeholder="More than 6 character" TextMode="Password" Enabled="False"></asp:TextBox>
                </div>
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="bg-primary" Width="393px" Enabled="False"/>
                <hr class="my-4" />
                <div class="wrap-input100 validate-input">
                        <asp:Button ID="Button1" runat="server" class="w-50 btn btn-primary btn-lg" type="submit" Text="Edit Your Account" OnClick="Button1_Click" />
		            	<asp:Button ID="Button2" runat="server" class="w-50 btn btn-primary btn-lg" type="submit" Text="Save Your Edit" Visible="false" OnClick="Button2_Click"/>
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" class="w-50 btn btn-primary btn-lg" type="submit" Text="Cancel" Visible="false" OnClick="Button3_Click"/>
              <br />
              <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#E3B04B"></asp:Label>
		            </div>
            </div>
        </div>
</asp:Content>
