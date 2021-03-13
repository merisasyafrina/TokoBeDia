<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert PT.aspx.cs" Inherits="TokoBediaa.Views.Insert_PT" %>
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

    <h2>Insert New Product Type</h2>
    <asp:Label Text="Product Type Name" runat="server" Width="200px"/>
    <asp:TextBox ID="txtName" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Name Required" ControlToValidate="txtName" ForeColor="Red" runat="server"/>
    <br />
    <asp:Label Text="Product Type Description" runat="server" Width="200px"/>
    <asp:TextBox ID="txtDesc" runat="server" />
    <asp:RequiredFieldValidator ErrorMessage="Product Price Required" ControlToValidate="txtDesc" ForeColor="Red" runat="server"/>
    <br /><br />
    <asp:Label ID="txtNameLen" Text="Your product type name must be at least 5 characters." ForeColor="Red" Visible="false" runat="server" />
    <br />
    <asp:Label ID="success" Text="Your product type has been successfully inserted." ForeColor="LightGreen" Visible="false" runat="server" />
    <br /><br />
    <asp:Button ID="btnInsertPT" Text="Insert Product Type" runat="server" OnClick="btnInsertPT_Click" />&nbsp;

    <br />
    

</asp:Content>
