<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View User.aspx.cs" Inherits="TokoBediaa.Views.View_User" %>
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
    </style>

    <h2> View User </h2>

    <div>
        <asp:GridView ID="GridView" HorizontalAlign="Center" runat="server" />
    </div>
    <br />
    <div>
        <asp:Label Text="Enter User ID" Width="150px" Forecolor="LightGreen" runat="server" />
        <asp:TextBox ID="txtID" runat="server" />
        <asp:Label ID="fillID" Text="Fill User ID to update status." Visible="false" ForeColor="Red" runat="server" />
        <br />
        <asp:Label Text="Enter User Status" Width="150px" Forecolor="LightGreen" runat="server" />
        <asp:TextBox ID="txtStatus" runat="server" />
        <asp:Label ID="fillStatus" Text="Fill User Status to update status." Visible="false" ForeColor="Red" runat="server" />
        <br /><br />
        <asp:Button ID="btnUpdate" Text="Update User Status" runat="server" OnClick="btnUpdate_Click" /> &nbsp;
        <asp:Button ID="btnHome" runat="server" Text="Go to Home" OnClick="btnHome_Click"/>
    </div>
</asp:Content>
