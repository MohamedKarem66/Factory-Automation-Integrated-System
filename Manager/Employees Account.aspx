<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Employees Account.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Employees_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Employees Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Employees Account
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Employee Name." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Employee_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" ReadOnly="True" SortExpression="Employee_ID" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name" SortExpression="Employee_Name" />
                <asp:BoundField DataField="Employee_Mobile" HeaderText="Employee Mobile" SortExpression="Employee_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Employee E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Employee_User_Name" HeaderText="Employee User Name" SortExpression="Employee_User_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Employee_ID], [Employee_Name], [Employee_Mobile], [Employee_E-Mail] AS column1, [Employee_User_Name] FROM [Employee]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Employee_ID" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" ReadOnly="True" SortExpression="Employee_ID" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name" SortExpression="Employee_Name" />
                <asp:BoundField DataField="Employee_Mobile" HeaderText="Employee Mobile" SortExpression="Employee_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Employee E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Employee_User_Name" HeaderText="Employee User Name" SortExpression="Employee_User_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Employee_ID], [Employee_Name], [Employee_Mobile], [Employee_E-Mail] AS column1, [Employee_User_Name] FROM [Employee] WHERE ([Employee_Name] LIKE '%' + @Employee_Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Employee_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
