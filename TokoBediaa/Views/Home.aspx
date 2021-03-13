<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TokoBediaa.Views.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        div{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        #visitorName{
            color: lightgreen;
            font-size: x-large;
        }
        h3{
            color: orangered;
            text-align: center;
        }
        #GridView{
            color: orangered;
        }
    </style>

    <header>
        <asp:Button ID="btnViewHome" Text="Home" runat="server" OnClick="btnViewHome_Click" />&nbsp;
        <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />&nbsp;
        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" />&nbsp;
        <asp:Button ID="btnProfile" Text="Profile" runat="server" OnClick="btnProfile_Click" />&nbsp;
        <asp:Button ID="btnLogout" Text="Logout" runat="server" OnClick="btnLogout_Click" />&nbsp;
        <asp:Button ID="btnViewUser" Text="View User" runat="server" OnClick="btnViewUser_Click" />&nbsp;
        <br /> <br />
        <asp:Button ID="btnViewProd" Text="View Product" runat="server" OnClick="btnViewProd_Click" />&nbsp;
        <asp:Button ID="btnInsertProd" Text="Insert Product" runat="server" OnClick="btnInsertProd_Click" />&nbsp;
        <asp:Button ID="btnUpdateProd" Text="Update Product" runat="server" OnClick="btnUpdateProd_Click" />
        <br />  <br />
        <asp:Button ID="btnViewPT" Text="View Product Type" runat="server" OnClick="btnViewPT_Click" />&nbsp;
        <asp:Button ID="btnInsertPT" Text="Insert Product Type" runat="server" OnClick="btnInsertPT_Click" />&nbsp;
        <asp:Button ID="btnUpdatePT" Text="Update Product Type" runat="server" OnClick="btnUpdatePT_Click" />
    </header>

    <div>
        <br />
        <asp:Label ID="visitorName" Text="" runat="server" />
        <h3>Recomemended For You</h3>
        <asp:GridView ID="GridView" HorizontalAlign="Center" ForeColor="OrangeRed" runat="server"></asp:GridView>
    </div>

</asp:Content>