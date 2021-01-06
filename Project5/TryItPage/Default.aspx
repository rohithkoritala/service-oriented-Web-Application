<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryItPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Welcome New Members / Current Members !</strong><br />
            <br />
            <strong>Student Bookstore for Arizona State University Students</strong><br />
            <br />
            Page Policy:<br />
            <br />
            1. Admins are staffs that will able to add new users, staffs and grant the admins to a user.<br />
            <br />
            2. Staffs are the one can only add new members.<br />
            <br />
            <strong>Portal for Membership:</strong><br />
            <br />
            <asp:Button ID="btnRegister" runat="server" OnClick="Button3_Click" Text="New Member Register" />
            <br />
            <br />
            <asp:Button ID="btnMemberLogin" runat="server" OnClick="btnMemberLogin_Click" Text="Current Member Login" />
            <br />
            <br />
            <strong>Portal for Staff and Administrator of the page:</strong><br />
            <br />
            <asp:Button ID="btnStaff" runat="server" OnClick="btnStaff_Click" Text="Staff Login" />
            <br />
            <br />
            <asp:Button ID="btnAdmin" runat="server" OnClick="btnAdmin_Click" Text="Admin Login" />
            <br />
        </div>
    </form>
</body>
</html>
