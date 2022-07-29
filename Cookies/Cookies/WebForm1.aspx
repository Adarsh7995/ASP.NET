<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cookies.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Enter your FirstName:</td>
            <td><asp:TextBox ID="txtFN" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter your LastName:</td>
            <td><asp:TextBox ID="txtLN" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit"  />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
