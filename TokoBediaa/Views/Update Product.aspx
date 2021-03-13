<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update Product.aspx.cs" Inherits="TokoBediaa.Views.Update_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h2{
            color: lightgreen;
            font-size: 50px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        div{
            color: lightgreen;
            margin-left: 50px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
    </style>
    
    <h2>Update Product</h2>

    <asp:GridView runat="server" ID="GridView" HorizontalAlign="Center"></asp:GridView>

    <br /> <br />
    <asp:Label Text="Product ID" runat="server" Width="150px"/>
    <asp:TextBox ID="txtID" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product ID Required" ForeColor="Red" ControlToValidate="txtID" runat="server"/>
    <br />
    <asp:Label Text="Product Type ID" runat="server" Width="150px"/>
    <asp:TextBox ID="txtPTID" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Type ID Required" ForeColor="Red" ControlToValidate="txtPTID" runat="server"/>
    <br />
    <asp:Label Text="Product Name" runat="server" Width="150px"/>
    <asp:TextBox ID="txtName" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Name Required" ForeColor="Red" ControlToValidate="txtName" runat="server"/>
    <br />
    <asp:Label Text="Product Price"  runat="server" Width="150px"/>
    <asp:TextBox ID="txtPrice" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Price Required" ForeColor="Red" ControlToValidate="txtPrice" runat="server"/>
    <asp:Label ID="price" Text="Input must be above 1000 and multiply of 1000" ForeColor="Red" Visible="false" runat="server" />
    <br />
    <asp:Label Text="Product Stock" runat="server" Width="150px"/>
    <asp:TextBox ID="txtStock" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Stock Required" ForeColor="Red" ControlToValidate="txtStock" runat="server"/>
    <asp:Label ID="stock" Text="Input must be 1 or more" ForeColor="Red" Visible="false" runat="server" />
    <br />  <br />
    <asp:Button Text="Update Product" ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" />
</asp:Content>
