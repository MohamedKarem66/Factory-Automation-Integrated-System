<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Customers Account.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Customers_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Customers Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Customers Account
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Customer Name." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Customer_Ballance" HeaderText="Customer Ballance" SortExpression="Customer_Ballance" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="Customer_Mobile" HeaderText="Customer Mobile" SortExpression="Customer_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Customer E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Customer_User_Name" HeaderText="Customer User Name" SortExpression="Customer_User_Name" />
                <asp:BoundField DataField="Customer_Address" HeaderText="Customer Address" SortExpression="Customer_Address" />
                <asp:BoundField DataField="Customer_Status" HeaderText="Customer Status" SortExpression="Customer_Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Customer_ID], [Customer_Ballance], [Customer_Name], [Customer_Mobile], [Customer_E-Mail] AS column1, [Customer_User_Name], [Customer_Address], [Customer_Status] FROM [Customer]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Customer_Ballance" HeaderText="Customer_Ballance" SortExpression="Customer_Ballance" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="Customer_Mobile" HeaderText="Customer_Mobile" SortExpression="Customer_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Customer E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Customer_User_Name" HeaderText="Customer_User_Name" SortExpression="Customer_User_Name" />
                <asp:BoundField DataField="Customer_Address" HeaderText="Customer_Address" SortExpression="Customer_Address" />
                <asp:BoundField DataField="Customer_Status" HeaderText="Customer_Status" SortExpression="Customer_Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Customer_ID], [Customer_Ballance], [Customer_Name], [Customer_Mobile], [Customer_E-Mail] AS column1, [Customer_User_Name], [Customer_Address], [Customer_Status] FROM [Customer] WHERE ([Customer_Name] LIKE '%' + @Customer_Name2 + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Customer_Name2" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
