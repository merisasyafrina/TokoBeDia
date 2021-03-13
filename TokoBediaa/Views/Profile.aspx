<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="TokoBediaa.Views.Profile1" %>
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
        
    
    <h2>Your Profile</h2>
    
    <div>
        <asp:Label Text="Email" Width="150px" runat="server" />
        <asp:Label ID="txtEmail" Text="" runat="server" />
        <br /> <br />
        <asp:Label Text="Name" Width="150px" runat="server" />
        <asp:Label ID="txtName" Text="" runat="server" />
        <br /> <br />
        <asp:Label Text="Gender" Width="150px" runat="server" />
        <asp:Label ID="txtGender" Text="" runat="server" />
        <br /> <br />
        <asp:Button ID="btnUpdate" Text="Update Profile" runat="server" OnClick="btnUpdate_Click" />
    </div>
    

</asp:Content>
