<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Add Product.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ADD Product</title>
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
					New Product
				</span>
			    <div class="wrap-input100 validate-input">
                    <label for="Product ID" class="form-label">Product ID</label>
                    <asp:TextBox ID="ID" runat="server" type="text" class="form-control" placeholder="Product ID"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="Name" class="form-label">Name</label>
                    <asp:TextBox ID="Name" runat="server" type="text" class="form-control" placeholder="Name"></asp:TextBox>
                    </div>
                <label class="label-input100" for="Descreption">Descreption</label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<asp:TextBox id="Descreption" class="input100" name="message" placeholder="Write a Descreption" runat="server" TextMode="MultiLine"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
                <div class="wrap-input100 validate-input">
                    <label for="Quantity" class="form-label">Quantity</label>
                    <asp:TextBox ID="Quantity" runat="server" type="text" class="form-control" placeholder="Quantity"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="Cost" class="form-label">Cost</label>
                    <asp:TextBox ID="Cost" runat="server" type="text" class="form-control" placeholder="Cost"></asp:TextBox>
                    </div>
	      		
                <div class="wrap-input100 validate-input">
                    <label for="Categoery" class="form-label">Categoery</label>
                    <asp:TextBox ID="Categoery" runat="server" type="text" class="form-control" placeholder="Categoery"></asp:TextBox>
                    </div>
                <div class="wrap-input100 validate-input">
                    <label for="Categoery" class="form-label">Product Image</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="bg-primary" Width="393px"/>    
                </div>
                <div class="wrap-input100 validate-input">
                        <asp:Button ID="Button1" runat="server" class="w-50 btn btn-primary btn-lg" type="submit" Text="ADD Product" OnClick="Button1_Click1" />
              <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#E3B04B"></asp:Label>
		            </div>
            </div>
        </div>
        </form>
</asp:Content>