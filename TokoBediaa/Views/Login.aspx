<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TokoBediaa.Views.Login" %>
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
        p{
            color: orangered;
        }
    </style>
    <div>
        <h2>Login</h2>
        <br />
        <asp:Label Width="150px" Text="Email"  runat="server" />
        <asp:TextBox ID="txtEmail" Width="250px" TextMode="Email" runat="server"/>
        <asp:RequiredFieldValidator ID="reqEmail" ControlToValidate="txtEmail" errormessage="Please enter your email!" ForeColor="Red" runat="server"/>
        <br />
        <asp:Label Width="150px" Text="Password"  runat="server" />
        <asp:TextBox ID="txtPassword" Width="250px" TextMode="Password" runat="server" />
        <asp:RequiredFieldValidator ID="reqPass" ControlToValidate="txtPassword" errormessage="Please enter your password!" ForeColor="Red"  runat="server"/>
        <br /><br />
        <asp:CheckBox ID="rememberMe" runat="server" />Remember me
        <br />  <br />
        <asp:Label ID="blocked" Text="Your account has been blocked" Visible="false" ForeColor="Red" runat="server" />
        <br />  <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="height: 29px" />
        
        <p>Doesn't have an account yet? Register below!</p>
        <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
    </div>
</asp:Content>
