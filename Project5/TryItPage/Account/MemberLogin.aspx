<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="TryItPage.Account.MemberLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>WELCOME TO MEMBER PAGE !<br />
            <br />
            Page Policy:</strong><br />
            <br />
            This page will allow the member to access to the <strong>INFORMATION DATA PAGE</strong>.<br />
            <br />
            A membership is required for any access and log in.<br />
            <br />
            There is no option for log in as guest from this page.<br />
            <br />
            A new member will need to go back for registration before using/log in.<br />
            <br />
            New member can use a hyperlink below in order to redirect back to <strong>REGISTRATION PAGE </strong>for faster access.<br />
            <br />
            <strong>Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:Label ID="errorLogin" runat="server"></asp:Label>
            <strong>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>New user? Click
            <asp:HyperLink ID="HyperLink1" runat="server" style="font-weight: 700">&quot;Register Here&quot;</asp:HyperLink>
&nbsp;to redirect back to the REGISTRATION PAGE.</div>
    </form>
</body>
</html>
