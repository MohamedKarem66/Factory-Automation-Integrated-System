<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Suppliers Account.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Suppliers_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Suppliers Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Suppliers Account
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Supplier Name." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Supplier_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier ID" ReadOnly="True" SortExpression="Supplier_ID" />
                <asp:BoundField DataField="Supplier_Ballance" HeaderText="Supplier Ballance" SortExpression="Supplier_Ballance" />
                <asp:BoundField DataField="Supplier_Name" HeaderText="Supplier Name" SortExpression="Supplier_Name" />
                <asp:BoundField DataField="Supplier_Mobile" HeaderText="Supplier Mobile" SortExpression="Supplier_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Supplier E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Supplier_User_Name" HeaderText="Supplier User Name" SortExpression="Supplier_User_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Supplier_ID], [Supplier_Ballance], [Supplier_Name], [Supplier_Mobile], [Supplier_E-Mail] AS column1, [Supplier_User_Name] FROM [Supplier]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Supplier_ID" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier ID" ReadOnly="True" SortExpression="Supplier_ID" />
                <asp:BoundField DataField="Supplier_Ballance" HeaderText="Supplier Ballance" SortExpression="Supplier_Ballance" />
                <asp:BoundField DataField="Supplier_Name" HeaderText="Supplier Name" SortExpression="Supplier_Name" />
                <asp:BoundField DataField="Supplier_Mobile" HeaderText="Supplier Mobile" SortExpression="Supplier_Mobile" />
                <asp:BoundField DataField="column1" HeaderText="Supplier E-Mail" SortExpression="column1" />
                <asp:BoundField DataField="Supplier_User_Name" HeaderText="Supplier User Name" SortExpression="Supplier_User_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Supplier_ID], [Supplier_Ballance], [Supplier_Name], [Supplier_Mobile], [Supplier_E-Mail] AS column1, [Supplier_User_Name] FROM [Supplier] WHERE ([Supplier_Name] LIKE '%' + @Supplier_Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Supplier_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
