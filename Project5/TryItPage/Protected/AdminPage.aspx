<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="TryItPage.Protected.AdminPage" %>

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
            <strong>Welcome to Administrator Page!</strong><br />
            <br />
            <span class="auto-style1"><strong>Page Policy:<br />
            </strong>
            <br />
            This page allows the administrator to be able to view all of the members in the group (including the staffs).<br />
            <br />
            No collecting private information will be allowed at this point.<br />
            <br />
            Password of members can&#39;t be modified by the administrator.<br />
            <br />
            The administrator only has the permission to delete or add a new member/staff directly.<br />
            <br />
            <strong>1. Adding new staff into the group:</strong><br />
            <br />
            Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Label ID="errorUser1" runat="server"></asp:Label>
            </strong>
            <br />
            <br />
            <strong>2. Adding new member into the group:<br />
            <br />
            </strong>Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorUser" runat="server"></asp:Label>
            <br />
            <br />
            3. Remove a member from the group:<br />
            <br />
            </strong>Username:<strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUser1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorUser0" runat="server"></asp:Label>
            <br />
            <br />
            4. Remove a staff from the group:<br />
            <br />
            </strong>Username:<strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorUser2" runat="server"></asp:Label>
            <br />
            </strong>
            </span>
        </div>
    </form>
</body>
</html>
