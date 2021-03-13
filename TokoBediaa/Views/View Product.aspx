<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View Product.aspx.cs" Inherits="TokoBediaa.Views.View_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        h2{
            color: lightgreen;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: x-large;
        }
        div{
            color: lightgreen;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .adminBtn{
            text-align: center;
        }
    </style>

    <h2> View Product </h2>

    <div>
        <asp:GridView ID="GridView" HorizontalAlign="Center" runat="server" />
    </div>
    <br />
    <div class="adminBtn">
        <asp:Button ID="btnHome" runat="server" Text="Go to Home" OnClick="btnHome_Click"/>
        <br /><br />
        <asp:Button ID="btnInsertP" runat="server" Text="Insert Product" OnClick="btnInsertP_Click"/>&nbsp;
        <asp:Button ID="btnUpdateP" runat="server" Text="Update Product" OnClick="btnUpdateP_Click"/>&nbsp;
        <br /><br />
        <asp:Label ID="notFound" Text="Product ID not found" ForeColor="Red" Visible="false" runat="server" />
        <br /><br />
        <asp:Label ID="labelID" Text="Input Product ID" ForeColor="LightGreen" Visible="false" runat="server" />&nbsp;
        <asp:TextBox ID="txtID" Visible="false" runat="server" />&nbsp;
        <asp:Button ID="btnDeleteP" runat="server" Text="Delete Product" OnClick="btnDeleteP_Click"/>
        
    </div>
    

</asp:Content>
