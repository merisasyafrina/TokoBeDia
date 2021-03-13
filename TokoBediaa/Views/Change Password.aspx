<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="TokoBediaa.Views.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h2{
            color: lightgreen;
            font-size: 50px;
        }
        div{
            color: lightgreen;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            margin-left: 50px;
        }
    </style>
    <div>
        <h2>Change Password</h2>
        <br />
        <asp:Label Width="150px" Text="Old Password"  runat="server" />
        <asp:TextBox ID="txtOld" Width="250px" TextMode="Password" runat="server"/>
        <asp:Label ID="old" Visible="false" Text="Your old password doesn't match." ForeColor="Red" runat="server" />
        <br />
        <asp:Label Width="150px" Text=" New Password"  runat="server" />
        <asp:TextBox ID="txtNew" Width="250px" TextMode="Password" runat="server" />
        <asp:Label ID="newVal" Visible="false" Text="Password must be at least 5 characters." ForeColor="Red" Width="250px" runat="server" />
        <br />
        <asp:Label Width="150px" Text=" Confirm Password"  runat="server" />
        <asp:TextBox ID="txtConf" Width="250px" TextMode="Password" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm password required." ForeColor="Red" ControlToValidate="txtConf"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" Width="200px" runat="server" ErrorMessage="Password does not match!" ControlToCompare="txtNew" ForeColor="Red" ControlToValidate="txtConf"></asp:CompareValidator>
        <br />  <br />
        <asp:Label ID="success" Text="Your password has been successfully updated." Visible="false" runat="server" />
        <br />  <br />
        <asp:Button ID="btnChangePass" runat="server" Text="Change Password" OnClick="btnChangePass_Click" />&nbsp;

       
    </div>
</asp:Content>
