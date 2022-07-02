<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="Make Order.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.Make_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
    <title>Make Order</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="md-form active-cyan-2 mb-3">
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search" aria-label="Search"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary btn-lg" BorderStyle="Dotted" BorderWidth="1px" Height="38px" OnClick="Button1_Click" Width="176px"/>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#E3B04B"></asp:Label>
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_ID" DataSourceID="SqlDataSource1" Height="300px" Width="320px" RepeatDirection="Horizontal" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="border-style: groove; border-width: 1px; text-align: center; background-color: #000000;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name")%>' Font-Bold="True" ForeColor="#FDCA00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" BorderWidth="1px" Height="280px" Width="280px" ImageUrl='<%# Eval("Product_Image") %>' />
                    </td>
                </tr>
                <tr>
                    <td style=" border-style: groove; border-width: 1px; text-align: center; background-color: #000000;">
                        <asp:Label ID="Label2" runat="server" Text="Price : " Font-Bold="True" ForeColor="#FDCA00"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Categoery")%>' Font-Bold="True" ForeColor="#FDCA00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" text-align: center;">
                        <asp:Label ID="Label4" runat="server" Text="Quntity : " Font-Bold="True" ></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg" Height="35px" Text="ADD to Cart" Width="200px" CommandName="ADDtoCart" CommandArgument='<%# Eval("Product_ID")%>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" SelectCommand="SELECT [Product_ID], [Product_Name], [Product_Categoery], [Product_Image] FROM [Product]"></asp:SqlDataSource>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</asp:Content>