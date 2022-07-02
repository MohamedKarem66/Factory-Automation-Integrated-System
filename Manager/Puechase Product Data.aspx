<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Puechase Product Data.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Puechase_Product_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Puechase Product Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>Review Puechase Product Data.</h1>
        <asp:Button ID="Button3" runat="server" class="contact100-form-btn" BackColor="#E3B04B" Height="34px" OnClick="Button3_Click" Text="SELECT Bill"/>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Purchases_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Purchases_ID" HeaderText="Purchases_ID" ReadOnly="True" SortExpression="Purchases_ID" />
                <asp:BoundField DataField="Purchases_Date" HeaderText="Purchases_Date" SortExpression="Purchases_Date" />
                <asp:BoundField DataField="Purchases_Descreption" HeaderText="Purchases_Descreption" SortExpression="Purchases_Descreption" />
                <asp:BoundField DataField="Purchases_Supplier_ID" HeaderText="Purchases_Supplier_ID" SortExpression="Purchases_Supplier_ID" />
                <asp:BoundField DataField="Purchases_Disccount" HeaderText="Purchases_Disccount" SortExpression="Purchases_Disccount" />
                <asp:BoundField DataField="Purchases_Total" HeaderText="Purchases_Total" SortExpression="Purchases_Total" />
                <asp:CommandField ButtonType="Button" HeaderText="Select" ShowSelectButton="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PurchasesProduct]">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
        </asp:GridView>
    </form>
</asp:Content>
