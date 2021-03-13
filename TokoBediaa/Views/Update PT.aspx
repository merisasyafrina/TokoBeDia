<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update PT.aspx.cs" Inherits="TokoBediaa.Views.Update_PT" %>
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
    
    <h2>Update Product Type</h2>

    <asp:GridView runat="server" ID="GridView" HorizontalAlign="Center"></asp:GridView>

    <asp:Label Text="Product Type ID" Width="200px" runat="server" />
    <asp:TextBox runat="server" ID="txtId" />
    <asp:RequiredFieldValidator ErrorMessage="Must be filled" ControlToValidate="txtId" runat="server" />
    <br />
    <asp:Label Text="Product Type Name" width="200px" runat="server" />
    <asp:TextBox runat="server" ID="txtName" />
    <asp:RequiredFieldValidator ErrorMessage="Must be filled" ControlToValidate="txtName" runat="server" />
    <br />
    <asp:Label Text="Product Type Description" width="200px" runat="server" />
    <asp:TextBox runat="server" ID="txtDesc" />
    <asp:RequiredFieldValidator ErrorMessage="Must be filled" ControlToValidate="txtDesc" runat="server" />
    <asp:Label ID="txtNameLen" Text="Your product type name must be at least 5 characters." ForeColor="Red" Visible="false" runat="server" />
    <asp:Label ID="alrExists" Text="Product type name already exists" ForeColor="Red" Visible="false" runat="server" />
    <br /><br />
    <asp:Button Text="Update Product Type" ID="btnUpdatePT" runat="server" OnClick="btnUpdatePT_Click"  />&nbsp;


</asp:Content>
