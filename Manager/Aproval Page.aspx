<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Aproval Page.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Aproval_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Aproval Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>The New Customers</h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="column1" HeaderText="Customer E-mail" SortExpression="column1" />
                <asp:BoundField DataField="Customer_Mobile" HeaderText="Customer Mobile" SortExpression="Customer_Mobile" />
                <asp:BoundField DataField="Customer_Status" HeaderText="Customer Status" SortExpression="Customer_Status" />
                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True">
                <ControlStyle CssClass="form-control btn btn-primary rounded submit px-3" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = @original_Customer_ID AND [Customer_Name] = @original_Customer_Name AND [Customer_E-Mail] = @original_column1 AND [Customer_Mobile] = @original_Customer_Mobile AND [Customer_Status] = @original_Customer_Status" InsertCommand="INSERT INTO [Customer] ([Customer_ID], [Customer_Name], [Customer_E-Mail], [Customer_Mobile], [Customer_Status]) VALUES (@Customer_ID, @Customer_Name, @column1, @Customer_Mobile, @Customer_Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Customer_ID], [Customer_Name], [Customer_E-Mail] AS column1, [Customer_Mobile], [Customer_Status] FROM [Customer] WHERE ([Customer_Status] = @Customer_Status)" UpdateCommand="UPDATE [Customer] SET [Customer_Name] = @Customer_Name, [Customer_E-Mail] = @column1, [Customer_Mobile] = @Customer_Mobile, [Customer_Status] = @Customer_Status WHERE [Customer_ID] = @original_Customer_ID AND [Customer_Name] = @original_Customer_Name AND [Customer_E-Mail] = @original_column1 AND [Customer_Mobile] = @original_Customer_Mobile AND [Customer_Status] = @original_Customer_Status">
            <DeleteParameters>
                <asp:Parameter Name="original_Customer_ID" Type="Int32" />
                <asp:Parameter Name="original_Customer_Name" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_Customer_Mobile" Type="String" />
                <asp:Parameter Name="original_Customer_Status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Customer_ID" Type="Int32" />
                <asp:Parameter Name="Customer_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Customer_Mobile" Type="String" />
                <asp:Parameter Name="Customer_Status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="false" Name="Customer_Status" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Customer_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Customer_Mobile" Type="String" />
                <asp:Parameter Name="Customer_Status" Type="String" />
                <asp:Parameter Name="original_Customer_ID" Type="Int32" />
                <asp:Parameter Name="original_Customer_Name" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_Customer_Mobile" Type="String" />
                <asp:Parameter Name="original_Customer_Status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </form>
</asp:Content>
