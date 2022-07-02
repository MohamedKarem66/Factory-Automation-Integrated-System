<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="In Box.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.In_Box" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Receive Message</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Receive Message</h1>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Message_Date" HeaderText="Message_Date" SortExpression="Message_Date" />
                <asp:BoundField DataField="Message_Sender" HeaderText="Message_Sender" SortExpression="Message_Sender" />
                <asp:BoundField DataField="Message_Subject" HeaderText="Message_Subject" SortExpression="Message_Subject" />
                <asp:BoundField DataField="Message_Text" HeaderText="Message_Text" SortExpression="Message_Text" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Message_Date], [Message_Sender], [Message_Subject], [Message_Text] FROM [Message] WHERE ([Message_Receive] = @Message_Receive) ORDER BY [Message_Date] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Message_Receive" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
