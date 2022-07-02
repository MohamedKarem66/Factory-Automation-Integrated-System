<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager Master.Master" AutoEventWireup="true" CodeBehind="Materials Data.aspx.cs" Inherits="Factory_Automation_Integrated_System.Manager.Materials_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Material Data</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Material Data
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Material Name." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </h1>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Material_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Material_ID" HeaderText="Material ID" ReadOnly="True" SortExpression="Material_ID" />
                <asp:BoundField DataField="Material_Name" HeaderText="Material Name" SortExpression="Material_Name" />
                <asp:BoundField DataField="Material_Descreption" HeaderText="Material Descreption" SortExpression="Material_Descreption" />
                <asp:BoundField DataField="Material_Quantity" HeaderText="Material Quantity" SortExpression="Material_Quantity" />
                <asp:BoundField DataField="Material_Cost" HeaderText="Material Cost" SortExpression="Material_Cost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Material]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="Material_ID" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:BoundField DataField="Material_ID" HeaderText="Material ID" ReadOnly="True" SortExpression="Material_ID" />
                <asp:BoundField DataField="Material_Name" HeaderText="Material Name" SortExpression="Material_Name" />
                <asp:BoundField DataField="Material_Descreption" HeaderText="Material Descreption" SortExpression="Material_Descreption" />
                <asp:BoundField DataField="Material_Quantity" HeaderText="Material Quantity" SortExpression="Material_Quantity" />
                <asp:BoundField DataField="Material_Cost" HeaderText="Material Cost" SortExpression="Material_Cost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Material] WHERE ([Material_Name] LIKE '%' + @Material_Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Material_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
