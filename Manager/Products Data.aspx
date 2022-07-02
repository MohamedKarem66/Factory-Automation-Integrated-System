<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Products Data.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Products_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Products Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Products Data<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter product Name." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Descreption" HeaderText="Product_Descreption" SortExpression="Product_Descreption" />
                <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                <asp:BoundField DataField="Product_Cost" HeaderText="Product_Cost" SortExpression="Product_Cost" />
                <asp:BoundField DataField="Product_Categoery" HeaderText="Product_Categoery" SortExpression="Product_Categoery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Descreption" HeaderText="Product_Descreption" SortExpression="Product_Descreption" />
                <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                <asp:BoundField DataField="Product_Cost" HeaderText="Product_Cost" SortExpression="Product_Cost" />
                <asp:BoundField DataField="Product_Categoery" HeaderText="Product_Categoery" SortExpression="Product_Categoery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_Name] LIKE '%' + @Product_Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Product_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
