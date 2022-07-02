<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Contact Page.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Contact_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Page</title>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
	<div class="container-contact100">
		<div class="wrap-contact100">
			
				<span class="contact100-form-title">
					Send Us A Message
				</span>

				<label class="label-input100" for="email">Send to :
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Emailer"></asp:RequiredFieldValidator>
				</label>
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<asp:TextBox id="Emailer" class="input100" type="text" name="email" placeholder="Eg. example@email.com" runat="server"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
				<label class="label-input100" for="phone">Subject :
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="Subject"></asp:RequiredFieldValidator>
				</label>
				<div class="wrap-input100">
					<asp:TextBox ID="Subject" class="input100" type="text" name="phone" placeholder="write a Title" runat="server"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">Message :
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="messageto"></asp:RequiredFieldValidator>
				</label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<asp:TextBox id="messageto" class="input100" name="message" placeholder="Write us a message" runat="server" TextMode="MultiLine"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<asp:Button ID="Button1" runat="server" class="contact100-form-btn" Text="Send Message" OnClick="Button1_Click" BackColor="#E3B04B" />
				</div>
				<asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#E3B04B"></asp:Label>
				<asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#E3B04B" Visible="False"></asp:Label>
					
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	</form>	
</asp:Content>
