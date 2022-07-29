<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Themes.WebForm1" StylesheetTheme="Skin1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div style="margin-top:130px;border:2px solid black;margin-left:200px;margin-right:200px">
        Enter Name:<asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Address:<asp:TextBox ID="Address" runat="server" BackColor="LightGreen" ForeColor="Purple" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        what languages do u know:
        <asp:ListBox ID="Subs" runat="server" OnSelectedIndexChanged="Subs_SelectedIndexChanged">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
        </asp:ListBox>
        <br />
        Choose your Branch:
        <asp:RadioButtonList ID="Branch" runat="server" OnLoad="Branch_SelectedIndexChanged">
            <asp:ListItem>DS</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:ImageButton ID="ok" runat="server" SkinID="okskin" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="cancel" runat="server" SkinID="cancelskin" />
    </div>
    </center>
    </form>
</body>
</html>
