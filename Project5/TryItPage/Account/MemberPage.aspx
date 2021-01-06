<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="TryItPage.Account.MemberPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

p {
  margin: 0 0 10px;
}
  p {
    orphans: 3;
    widows: 3;
  }
  * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <strong>Welcome to MemberPage!</strong></p>
            <p>
                &nbsp;</p>
            <p>
                This is the page that just only Members can be accessed to use the following services.</p>
            <p>
                The staffs and administrator will not be able to access this unless they sign up as membership.</p>
            <p>
                This is the unique services for Members only.</p>
            <p>
                &nbsp;</p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String to KeyPad Phone Format Converter Service Function:</p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String to Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Message from the service:
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" />
            </p>
            <p>
                &nbsp;</p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unit Converter:</p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Weight Pound to Kilogram:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Convert Weight" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Weight Converted to Kilogram is:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Height to Centimeter:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Convert Height" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Height Converted to Centimeter is:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Error Message From the Service:&nbsp; <asp:Label ID="Label6" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
