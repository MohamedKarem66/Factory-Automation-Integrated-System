<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test Email.aspx.cs" Inherits="Factory_Automation_Integrated_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Verification</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <link href="CSS/form-validation.css" rel="stylesheet"/>
    <link rel="stylesheet" href="CSS/style1.css"/>
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext"
	 rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: auto;
            pointer-events: none;
            max-width: 500px;
            left: -1px;
            top: 0px;
        }
    </style>
</head>
<body class="bg-light">
    <section>
        <div class="container" tabindex="-1" role="dialog" id="modalSignin">
            <div class="auto-style1" role="document">
                <div class="modal-content rounded-5 shadow">
                    <div class="modal-header p-5 pb-4 border-bottom-0">
                        <h2 class="fw-bold mb-0">Email Verification</h2>
                    </div>
                    <div class="modal-body p-5 pt-0">
                        <form id="form1" runat="server">
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="code" runat="server" class="form-control rounded-4"></asp:TextBox>
                                <label for="floatingInput">Enter code</label>
                            </div>
                            <asp:Button ID="Button2" runat="server" Text="Sign In" class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" OnClick="Button1_Click" />
                            <small class="text-muted">By clicking Sign In, you agree to the terms of use.</small>
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                            
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="container">
        <p class="text-black text-center">© Powered By FUE Team © 2022 - Company. - <a href="Index Page.aspx">Privacy</a> - <a href="Index Page.aspx">Terms</a></p>
    </footer>    
</body>
</html>