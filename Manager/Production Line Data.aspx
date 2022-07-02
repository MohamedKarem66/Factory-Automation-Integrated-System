<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Production Line Data.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Production_Line_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Production Line Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>Review Production Line Data.</h1>
        <asp:Button ID="Button3" runat="server" class="contact100-form-btn" BackColor="#E3B04B" Height="34px" OnClick="Button3_Click" Text="SELECT Bill"/>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Production_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Production_ID" HeaderText="Production_ID" ReadOnly="True" SortExpression="Production_ID" />
                <asp:BoundField DataField="Production_Date" HeaderText="Production_Date" SortExpression="Production_Date" />
                <asp:BoundField DataField="Production_Descreption" HeaderText="Production_Descreption" SortExpression="Production_Descreption" />
                <asp:BoundField DataField="Production_Employee_ID" HeaderText="Production_Employee_ID" SortExpression="Production_Employee_ID" />
                <asp:CommandField ButtonType="Button" HeaderText="Select" ShowSelectButton="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Production]">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView4" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
        </asp:GridView>
    </form>
</asp:Content>
