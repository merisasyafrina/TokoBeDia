<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View PT.aspx.cs" Inherits="TokoBediaa.Views.View_PT" %>
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
        #btnHome{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .adminBtn{
            text-align: center;
        }
    </style>

    <h2> View Product Type </h2>

    <div>
        <asp:GridView ID="GridView" HorizontalAlign="Center" runat="server" />
    </div>
    <br />
    <div class="adminBtn">
        <asp:Button ID="btnHome" runat="server" Text="Go to Home" OnClick="btnHome_Click"/>
        <br /><br />
        <asp:Button ID="btnInsertPT" runat="server" Text="Insert Product Type" OnClick="btnInsertPT_Click1" />&nbsp;
        <asp:Button ID="btnUpdatePT" runat="server" Text="Update Product Type" OnClick="btnUpdatePT_Click1" />&nbsp;
        <br /><br />
        <asp:Label ID="notFound" Text="Product ID not found" ForeColor="Red" Visible="false" runat="server" />
        <br /><br />
        <asp:Label ID="labelID" Text="Input Product Type ID" ForeColor="LightGreen" Visible="false" runat="server" />&nbsp;
        <asp:TextBox ID="txtID" Visible="false" runat="server" />&nbsp;
        <asp:Button ID="btnDeletePT" runat="server" Text="Delete Product Type" OnClick="btnDeletePT_Click1" />
        
    </div>
</asp:Content>
