<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Choose a background Color:<br/>
        <asp:DropDownList ID="lstbackcolor" runat="server" Width="190px" Height="25px"></asp:DropDownList><br/>
        Choose a Font:<br/>
        <asp:DropDownList ID="lstfontnames" runat="server" Width="190px" Height="25px"></asp:DropDownList><br/>
        Specify a +venumeric Font Size:<br/>
        <asp:TextBox ID="txtfontsize" runat="server"></asp:TextBox><br/>
        Choose Border Style:<br/>
        <asp:RadioButtonList ID="lstborder" runat="server" Width="190px" Height="100px"></asp:RadioButtonList><br/>
        <asp:CheckBox ID="chkdefaultpic" runat="server" Text="Add Default Pic"/><br/>
        <asp:TextBox ID="txtgreeting" runat="server" Width="190px" Height="100px" Textmode="MultiLine"></asp:TextBox><br/>
        <asp:Button ID="update" runat="server" Text="update" OnClick="cmdupdate_click" />
    </div>
        <asp:Panel ID="Panel1" Width="350px" Height="500px" HorizontalAlign="center" Style="position:absolute;top:10px;left:300px" runat="server">
            <asp:Label ID="lblgreeting" runat="server" Text="" Width="300px" Height="150px"></asp:Label>
            <asp:Image ID="imgdefault"  Width="200px" Height="300px" runat="server" />
        </asp:Panel>

    </form>
</body>
</html>
