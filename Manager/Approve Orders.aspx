<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Approve Orders.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Approve_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Approve Orders</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
	<h1>Approve Orders
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter the Customer ID" class="form-control" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </h1>
    <asp:Button ID="Button3" runat="server" class="contact100-form-btn" BackColor="#E3B04B" Height="34px" OnClick="Button3_Click" Text="SELECT Bill"/>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon"></asp:Label>
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="order_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="order_ID" HeaderText="order_ID" ReadOnly="True" SortExpression="order_ID" />
            <asp:BoundField DataField="order_Date" HeaderText="order_Date" SortExpression="order_Date" />
            <asp:BoundField DataField="order_Descreption" HeaderText="order_Descreption" SortExpression="order_Descreption" />
            <asp:BoundField DataField="order_Address" HeaderText="order_Address" SortExpression="order_Address" />
            <asp:BoundField DataField="order_delivery_time" HeaderText="order_delivery_time" SortExpression="order_delivery_time" />
            <asp:BoundField DataField="order_Customer_ID" HeaderText="order_Customer_ID" SortExpression="order_Customer_ID" />
            <asp:BoundField DataField="order_Total" HeaderText="order_Total" SortExpression="order_Total" />
            <asp:BoundField DataField="order_Status" HeaderText="order_Status" SortExpression="order_Status" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
            <ControlStyle CssClass="btn btn-primary rounded submit px-3" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Choose_order_online] WHERE ([order_Status] = @order_Status)" DeleteCommand="DELETE FROM [Choose_order_online] WHERE [order_ID] = @order_ID" InsertCommand="INSERT INTO [Choose_order_online] ([order_ID], [order_Date], [order_Descreption], [order_Customer_ID], [order_Total], [order_Status]) VALUES (@order_ID, @order_Date, @order_Descreption, @order_Customer_ID, @order_Total, @order_Status)" UpdateCommand="UPDATE [Choose_order_online] SET [order_Date] = @order_Date, [order_Descreption] = @order_Descreption, [order_Customer_ID] = @order_Customer_ID, [order_Total] = @order_Total, [order_Status] = @order_Status WHERE [order_ID] = @order_ID">
        <DeleteParameters>
            <asp:Parameter Name="order_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_ID" Type="Int32" />
            <asp:Parameter Name="order_Date" Type="String" />
            <asp:Parameter Name="order_Descreption" Type="String" />
            <asp:Parameter Name="order_Customer_ID" Type="Int32" />
            <asp:Parameter Name="order_Total" Type="Int32" />
            <asp:Parameter Name="order_Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Not Approved yet." Name="order_Status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="order_Date" Type="String" />
            <asp:Parameter Name="order_Descreption" Type="String" />
            <asp:Parameter Name="order_Customer_ID" Type="Int32" />
            <asp:Parameter Name="order_Total" Type="Int32" />
            <asp:Parameter Name="order_Status" Type="String" />
            <asp:Parameter Name="order_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="order_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="order_ID" HeaderText="order_ID" ReadOnly="True" SortExpression="order_ID" />
            <asp:BoundField DataField="order_Date" HeaderText="order_Date" SortExpression="order_Date" />
            <asp:BoundField DataField="order_Descreption" HeaderText="order_Descreption" SortExpression="order_Descreption" />
            <asp:BoundField DataField="order_Address" HeaderText="order_Address" SortExpression="order_Address" />
            <asp:BoundField DataField="order_delivery_time" HeaderText="order_delivery_time" SortExpression="order_delivery_time" />
            <asp:BoundField DataField="order_Customer_ID" HeaderText="order_Customer_ID" SortExpression="order_Customer_ID" />
            <asp:BoundField DataField="order_Total" HeaderText="order_Total" SortExpression="order_Total" />
            <asp:BoundField DataField="order_Status" HeaderText="order_Status" SortExpression="order_Status" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
            <ControlStyle CssClass="btn btn-primary rounded submit px-3" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Choose_order_online] WHERE (([order_Status] = @order_Status) AND ([order_Customer_ID] = @order_Customer_ID))" DeleteCommand="DELETE FROM [Choose_order_online] WHERE [order_ID] = @order_ID" InsertCommand="INSERT INTO [Choose_order_online] ([order_ID], [order_Date], [order_Descreption], [order_Customer_ID], [order_Total], [order_Status]) VALUES (@order_ID, @order_Date, @order_Descreption, @order_Customer_ID, @order_Total, @order_Status)" UpdateCommand="UPDATE [Choose_order_online] SET [order_Date] = @order_Date, [order_Descreption] = @order_Descreption, [order_Customer_ID] = @order_Customer_ID, [order_Total] = @order_Total, [order_Status] = @order_Status WHERE [order_ID] = @order_ID">
        <DeleteParameters>
            <asp:Parameter Name="order_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_ID" Type="Int32" />
            <asp:Parameter Name="order_Date" Type="String" />
            <asp:Parameter Name="order_Descreption" Type="String" />
            <asp:Parameter Name="order_Customer_ID" Type="Int32" />
            <asp:Parameter Name="order_Total" Type="Int32" />
            <asp:Parameter Name="order_Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Not Approved yet." Name="order_Status" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="order_Customer_ID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="order_Date" Type="String" />
            <asp:Parameter Name="order_Descreption" Type="String" />
            <asp:Parameter Name="order_Customer_ID" Type="Int32" />
            <asp:Parameter Name="order_Total" Type="Int32" />
            <asp:Parameter Name="order_Status" Type="String" />
            <asp:Parameter Name="order_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView3" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
    </asp:GridView>
        </form>
</asp:Content>
