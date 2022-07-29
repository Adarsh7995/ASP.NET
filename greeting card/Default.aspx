<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CENTER><h1>MAKING A GREETING CARD DYNAMICALLY</h1>
            <p>&nbsp;</p></CENTER>
        choose a background color:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="lstBackColor" runat="server"></asp:DropDownList>
        <br />
        <br />
        choose a font style in font family:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="lstFontName" runat="server"></asp:DropDownList>
        <br />
        <br />
        specify a numeric font size(positive)<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        choose a border style :<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>Double</asp:ListItem>
            <asp:ListItem>Solid</asp:ListItem>
        </asp:RadioButtonList>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="add the default picture" />

        <br />
        <br />
        Enter the greeting text below :<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update" />

        <br />
        <br />
    </div>
    </form>
</body>
</html>
