<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Sale Bill.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Sale_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Sale Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>Review Salses Bill
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter the ID Suplier" class="form-control"></asp:TextBox>
        </h1>
        <asp:Button ID="Button3" runat="server" class="contact100-form-btn" BackColor="#E3B04B" Height="34px" OnClick="Button3_Click" Text="SELECT Bill"/>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Sales_ID">
            <Columns>
                <asp:BoundField DataField="Sales_ID" HeaderText="Sales_ID" SortExpression="Sales_ID" ReadOnly="True" />
                <asp:BoundField DataField="Sales_Date" HeaderText="Sales_Date" SortExpression="Sales_Date" />
                <asp:BoundField DataField="Sales_Descreption" HeaderText="Sales_Descreption" SortExpression="Sales_Descreption" />
                <asp:BoundField DataField="Sales_Customer_ID" HeaderText="Sales_Customer_ID" SortExpression="Sales_Customer_ID" />
                <asp:BoundField DataField="Sales_Disccount" HeaderText="Sales_Disccount" SortExpression="Sales_Disccount" />
                <asp:BoundField DataField="Sales_Total" HeaderText="Sales_Total" SortExpression="Sales_Total" />
                <asp:CommandField ButtonType="Button" HeaderText="Select Bill" ShowSelectButton="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sales] ORDER BY [Sales_Date] DESC">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Sales_ID">
            <Columns>
                <asp:BoundField DataField="Sales_ID" HeaderText="Sales_ID" SortExpression="Sales_ID" ReadOnly="True" />
                <asp:BoundField DataField="Sales_Date" HeaderText="Sales_Date" SortExpression="Sales_Date" />
                <asp:BoundField DataField="Sales_Descreption" HeaderText="Sales_Descreption" SortExpression="Sales_Descreption" />
                <asp:BoundField DataField="Sales_Customer_ID" HeaderText="Sales_Customer_ID" SortExpression="Sales_Customer_ID" />
                <asp:BoundField DataField="Sales_Disccount" HeaderText="Sales_Disccount" SortExpression="Sales_Disccount" />
                <asp:BoundField DataField="Sales_Total" HeaderText="Sales_Total" SortExpression="Sales_Total" />
                <asp:CommandField ButtonType="Button" HeaderText="Select" ShowSelectButton="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sales] WHERE ([Sales_Customer_ID] = @Sales_Customer_ID) ORDER BY [Sales_Date] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Sales_Customer_ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
        </asp:GridView>
        <br />
        <br />
    </form>
</asp:Content>
