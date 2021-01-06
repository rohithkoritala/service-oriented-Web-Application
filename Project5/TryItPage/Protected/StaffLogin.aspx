<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="TryItPage.Account.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Welcome to Staff Loggin Page!</strong><br />
            <br />
            <strong>Page Policy:<br />
            </strong>
            <br />
            Only the Administrator or Staff Members can have the full access at this point.<br />
            <br />
            Please go back if you are not a authorized Staff Members.<br />
            <br />
            <strong>Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;
            <br />
            <br />
            </strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Staff Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorLogin" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
