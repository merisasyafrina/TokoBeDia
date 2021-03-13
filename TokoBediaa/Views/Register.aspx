<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TokoBediaa.Views.Register" %>
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


    <h2> Register </h2>

    <div>
        <br />
        <asp:Label Width="150px" Text="Email"  runat="server" />
        <asp:TextBox ID="txtEmail" Width="250px" TextMode="Email" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required." ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <br />
        <asp:Label Width="150px" Text="Name"  runat="server" />
        <asp:TextBox ID="txtName" Width="250px" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name required." ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        <asp:Label Width="150px" Text="Password"  runat="server" />
        <asp:TextBox ID="txtPassword" Width="250px" TextMode="Password" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password required." ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        <br />
        <asp:Label Width="150px" Text="Confirm Password"  runat="server" />
        <asp:TextBox ID="txtConfPassword" Width="250px" TextMode="Password" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm password required." ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match!" ControlToCompare="txtPassword" ForeColor="Red" ControlToValidate="txtConfPassword"></asp:CompareValidator>
        <br />
        <asp:Label Width="150px" Text="Gender"  runat="server" />
        <asp:RadioButtonList ID="btnGender" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br /> <br />
        <asp:Label ID="notUnique" Text="Another account has used this email" Visible="false" runat="server" />
        <br /> <br />
        <asp:Button class="register" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        
    </div>
</asp:Content>