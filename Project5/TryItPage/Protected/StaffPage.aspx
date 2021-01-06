<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="TryItPage.Protected.StaffPage" %>

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
        <div>
            <strong>Welcome to Staff Page Login!</strong><br />
            <br />
            <span class="auto-style1"><strong>Page Policy:<br />
            </strong>
            <br />
            This page allows the staff or administrator to be able to view all of the members in the group.<br />
            <br />
            No collecting private information will be allowed at this point.<br />
            <br />
            Password of a member can&#39;t be modified by the staff or administrator.<br />
            <br />
            The staff or administrator only has the permission to delete or add a new member directly.<br />
            <br />
            1<strong>. Adding new member into the group:<br />
            <br />
            </strong>Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorUser" runat="server"></asp:Label>
            <br />
            <br />
            2. Remove a member from the group:<br />
            <br />
            </strong>Username:<strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser1" runat="server"></asp:TextBox>
            <br />
            <br />
            </strong>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Label ID="errorUser0" runat="server"></asp:Label>
            </strong>
            <br />
            </span>
        </div>
    </form>
</body>
</html>
