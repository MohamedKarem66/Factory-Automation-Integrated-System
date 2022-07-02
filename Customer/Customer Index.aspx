<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="Customer Index.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.Customer_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Welcome Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome mr <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>.</h1>
</asp:Content>