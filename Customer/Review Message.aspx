<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="Review Message.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.Review_Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Review Message</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Review Message</h1>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Message_Date" HeaderText="Message_Date" SortExpression="Message_Date" />
                <asp:BoundField DataField="Message_Receive" HeaderText="Message_Receive" SortExpression="Message_Receive" />
                <asp:BoundField DataField="Message_Subject" HeaderText="Message_Subject" SortExpression="Message_Subject" />
                <asp:BoundField DataField="Message_Text" HeaderText="Message_Text" SortExpression="Message_Text" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Message_Date], [Message_Receive], [Message_Subject], [Message_Text] FROM [Message] WHERE ([Message_Sender] = @Message_Sender)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Message_Sender" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
