<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRegister.aspx.cs" Inherits="TryItPage.Account.MemberRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <strong>You are Currently in Registration Page !<p>
            Welcome New Member !</p>
        </strong>
        <p>
            This page will allow the new member to create an account</p>
        <strong>User Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </strong>
        <br />
        <br />
        <strong>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="errorUser" runat="server"></asp:Label>
        <br />
        <br />
        Capcha - Image Varification:<br />
        <br />
        User must complete the image verfication by entering the correct string in order to complete task:<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Capcha" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="errorImage" runat="server"></asp:Label>
        <br />
        <br />
        Please enter the following string into the textbox below:<br />
        <br />
        <asp:TextBox ID="txtImageStr" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Already got the account? Click
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True">Sign In Here</asp:HyperLink>
&nbsp;in order to redirect to <strong>MEMBER LOGIN PAGE !</strong><br />
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
