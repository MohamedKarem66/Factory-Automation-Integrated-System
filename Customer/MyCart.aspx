<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer Master.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="Factory_Automation_Integrated_System.Customer.My_Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
	<link rel="icon" href="https://img.freepik.com/free-vector/letter-f-initial-icon-logo-template_23987-54.jpg?w=2000" sizes="32x32" type="image/png"/>
	<link rel="stylesheet" type="text/css" href="../CSS/animate.css">
	<link rel="stylesheet" type="text/css" href="../CSS/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../CSS/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/util.css">
	<link rel="stylesheet" type="text/css" href="../CSS/main2.css">
    <title>My Cart</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: #E3B04B">Shopping Cart<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="t" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" ShowFooter="True" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="order_Id" HeaderText="order_Id" SortExpression="order_Id" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" SortExpression="Product_Id" />
            <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
            <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
            <asp:BoundField DataField="Product_Categoery" HeaderText="Product_Categoery" SortExpression="Product_Categoery" />
            <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" SortExpression="Total_Price" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            <asp:BoundField DataField="vald" HeaderText="vald" SortExpression="vald" />
            <asp:CommandField ButtonType="Button" HeaderText="DELETE" ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-primary btn-lg" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Factory DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Choose_order] WHERE [ID] = @original_ID AND [order_Id] = @original_order_Id AND [Product_Id] = @original_Product_Id AND [Product_name] = @original_Product_name AND [Product_Quantity] = @original_Product_Quantity AND [Product_Categoery] = @original_Product_Categoery AND [Total_Price] = @original_Total_Price AND [cid] = @original_cid AND [vald] = @original_vald" InsertCommand="INSERT INTO [Choose_order] ([ID], [order_Id], [Product_Id], [Product_name], [Product_Quantity], [Product_Categoery], [Total_Price], [cid], [vald]) VALUES (@ID, @order_Id, @Product_Id, @Product_name, @Product_Quantity, @Product_Categoery, @Total_Price, @cid, @vald)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Choose_order] WHERE (([cid] = @cid) AND ([vald] = @vald))" UpdateCommand="UPDATE [Choose_order] SET [order_Id] = @order_Id, [Product_Id] = @Product_Id, [Product_name] = @Product_name, [Product_Quantity] = @Product_Quantity, [Product_Categoery] = @Product_Categoery, [Total_Price] = @Total_Price, [cid] = @cid, [vald] = @vald WHERE [ID] = @original_ID AND [order_Id] = @original_order_Id AND [Product_Id] = @original_Product_Id AND [Product_name] = @original_Product_name AND [Product_Quantity] = @original_Product_Quantity AND [Product_Categoery] = @original_Product_Categoery AND [Total_Price] = @original_Total_Price AND [cid] = @original_cid AND [vald] = @original_vald">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_order_Id" Type="Int32" />
            <asp:Parameter Name="original_Product_Id" Type="Int32" />
            <asp:Parameter Name="original_Product_name" Type="String" />
            <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Product_Categoery" Type="Int32" />
            <asp:Parameter Name="original_Total_Price" Type="Int32" />
            <asp:Parameter Name="original_cid" Type="Int32" />
            <asp:Parameter Name="original_vald" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="order_Id" Type="Int32" />
            <asp:Parameter Name="Product_Id" Type="Int32" />
            <asp:Parameter Name="Product_name" Type="String" />
            <asp:Parameter Name="Product_Quantity" Type="Int32" />
            <asp:Parameter Name="Product_Categoery" Type="Int32" />
            <asp:Parameter Name="Total_Price" Type="Int32" />
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="vald" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="cid" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="Label2" Name="vald" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="order_Id" Type="Int32" />
            <asp:Parameter Name="Product_Id" Type="Int32" />
            <asp:Parameter Name="Product_name" Type="String" />
            <asp:Parameter Name="Product_Quantity" Type="Int32" />
            <asp:Parameter Name="Product_Categoery" Type="Int32" />
            <asp:Parameter Name="Total_Price" Type="Int32" />
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="vald" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_order_Id" Type="Int32" />
            <asp:Parameter Name="original_Product_Id" Type="Int32" />
            <asp:Parameter Name="original_Product_name" Type="String" />
            <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Product_Categoery" Type="Int32" />
            <asp:Parameter Name="original_Total_Price" Type="Int32" />
            <asp:Parameter Name="original_cid" Type="Int32" />
            <asp:Parameter Name="original_vald" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <label class="label-input100" for="message">Adress :
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    </label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<asp:TextBox id="TextBox1" class="input100" name="message" placeholder="Write us your Address" runat="server" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
    <label class="label-input100" for="message">Note :
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ControlToValidate="messageto"></asp:RequiredFieldValidator>
    </label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<asp:TextBox id="messageto" class="input100" name="message" placeholder="Write us a Note" runat="server" TextMode="MultiLine"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
    <br />
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Text="Continue Shopping" PostBackUrl="~/Customer/Make Order.aspx"/>
    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Finish this Order" OnClick="Button2_Click1" />
    <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</asp:Content>