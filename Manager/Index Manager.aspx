<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Index Manager.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Index_Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Welcome Manager</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" class="mb-4" Text="" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    <h2>This is Material what we need to Purchase.</h2>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Material_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Material_ID" HeaderText="Material_ID" ReadOnly="True" SortExpression="Material_ID" />
                <asp:BoundField DataField="Material_Name" HeaderText="Material_Name" SortExpression="Material_Name" />
                <asp:BoundField DataField="Material_Descreption" HeaderText="Material_Descreption" SortExpression="Material_Descreption" />
                <asp:BoundField DataField="Material_Quantity" HeaderText="Material_Quantity" SortExpression="Material_Quantity" />
                <asp:BoundField DataField="Material_Cost" HeaderText="Material_Cost" SortExpression="Material_Cost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Material] WHERE ([Material_Quantity] &lt; @Material_Quantity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="100" Name="Material_Quantity" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <h2>This is Product what we need to Production.</h2>
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Descreption" HeaderText="Product_Descreption" SortExpression="Product_Descreption" />
                <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                <asp:BoundField DataField="Product_Cost" HeaderText="Product_Cost" SortExpression="Product_Cost" />
                <asp:BoundField DataField="Product_Categoery" HeaderText="Product_Categoery" SortExpression="Product_Categoery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_Quantity] &lt; @Product_Quantity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="100" Name="Product_Quantity" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    </asp:Content>
