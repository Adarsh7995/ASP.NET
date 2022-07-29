<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login Page</h1>
        Enter your Name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
        Enter your email:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="email" runat="server"></asp:TextBox><br />
        Enter your password:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/Default2.aspx">forgot password?</asp:HyperLink><br />
        <input id="first" type="submit" value="submit" runat="server" onserverclick="onClick" />
    </div>
    </form>
</body>
</html>
