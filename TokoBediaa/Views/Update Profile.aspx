<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update Profile.aspx.cs" Inherits="TokoBediaa.Views.Profile" %>
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


    <h2> Update Profile </h2>

    <div>
        <br />
        <asp:Label Width="150px" Text="Email"  runat="server" />
        <asp:TextBox ID="txtEmail" Width="250px" TextMode="Email" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <br />
        <asp:Label Width="150px" Text="Name"  runat="server" />
        <asp:TextBox ID="txtName" Width="250px" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name required." ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        <asp:Label Width="150px" Text="Gender"  runat="server" />
        <asp:RadioButtonList ID="btnGender" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br /> <br />
        <asp:Label ID="notUnique" Text="Another account has used this email." Visible="false" runat="server" />
        <asp:Label ID="success" Text="Your account has successfully updated." Visible="false" runat="server" />
        <br /> <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" OnClick="btnUpdate_Click" />&nbsp;
        <asp:Button Text="Change Password" ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" />
    </div>
</asp:Content>
