<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Discount Material Data.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Discount_Material_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Discount Materail Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>Review Discount Material Data. </h1>
        <asp:Button ID="Button3" runat="server" class="contact100-form-btn" BackColor="#E3B04B" Height="34px" OnClick="Button3_Click" Text="SELECT Bill"/>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Discount_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Discount_ID" HeaderText="Discount_ID" ReadOnly="True" SortExpression="Discount_ID" />
                <asp:BoundField DataField="Discount_Date" HeaderText="Discount_Date" SortExpression="Discount_Date" />
                <asp:BoundField DataField="Discount_Descreption" HeaderText="Discount_Descreption" SortExpression="Discount_Descreption" />
                <asp:BoundField DataField="Discount_Employee_ID" HeaderText="Discount_Employee_ID" SortExpression="Discount_Employee_ID" />
                <asp:BoundField DataField="Discount_Total" HeaderText="Discount_Total" SortExpression="Discount_Total" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderText="Select" >
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DiscountMaterial]" DeleteCommand="DELETE FROM [DiscountMaterial] WHERE [Discount_ID] = @original_Discount_ID" InsertCommand="INSERT INTO [DiscountMaterial] ([Discount_ID], [Discount_Date], [Discount_Descreption], [Discount_Employee_ID], [Discount_Total]) VALUES (@Discount_ID, @Discount_Date, @Discount_Descreption, @Discount_Employee_ID, @Discount_Total)" UpdateCommand="UPDATE [DiscountMaterial] SET [Discount_Date] = @Discount_Date, [Discount_Descreption] = @Discount_Descreption, [Discount_Employee_ID] = @Discount_Employee_ID, [Discount_Total] = @Discount_Total WHERE [Discount_ID] = @original_Discount_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_Discount_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Discount_ID" Type="Int32" />
                <asp:Parameter Name="Discount_Date" Type="String" />
                <asp:Parameter Name="Discount_Descreption" Type="String" />
                <asp:Parameter Name="Discount_Employee_ID" Type="Int32" />
                <asp:Parameter Name="Discount_Total" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Discount_Date" Type="String" />
                <asp:Parameter Name="Discount_Descreption" Type="String" />
                <asp:Parameter Name="Discount_Employee_ID" Type="Int32" />
                <asp:Parameter Name="Discount_Total" Type="Int32" />
                <asp:Parameter Name="original_Discount_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" class="table table-bordered table-condensed table-responsive table-hover ">
        </asp:GridView>
    </form>
</asp:Content>
