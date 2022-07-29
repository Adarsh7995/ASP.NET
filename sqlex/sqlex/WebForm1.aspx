<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sqlex.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="position:absolute;top:0px; height:200px; background-color:skyblue; ">
        <asp:DropDownList ID="lstAuthors" runat="server" OnSelectedIndexChanged="lstAuthors_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList><br />
        <asp:Button ID="cmdCR" runat="server" Text="Create Record" OnClick="cmdCR_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdIR" runat="server" Text="Insert Record" OnClick="cmdIR_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdUR" runat="server" Text="Update Record" OnClick="cmdUR_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdDR" runat="server" Text="Delete Record" OnClick="cmdDR_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:absolute;top:200px; background-color:lightgreen; ">
        Author ID: <asp:TextBox ID="txtau_id" runat="server"></asp:TextBox><br />
        Author First Name: <asp:TextBox ID="txtau_fn" runat="server"></asp:TextBox><br />
        Author Last Name: <asp:TextBox ID="txtau_ln" runat="server"></asp:TextBox><br />
        Author Phone: <asp:TextBox ID="txtphone" runat="server"></asp:TextBox><br />
        Author Address: <asp:TextBox ID="txtadd" runat="server"></asp:TextBox><br />
        Author City: <asp:TextBox ID="txtcity" runat="server"></asp:TextBox><br />
        State : <asp:TextBox ID="txtstate" runat="server"></asp:TextBox><br />
        Zip Code: <asp:TextBox ID="txtzip" runat="server"></asp:TextBox><br />
        Contract: <asp:CheckBox ID="chkcontract" runat="server"></asp:CheckBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lblstatus" runat="server"></asp:Label>
        <br />

    </div>
    </form>
</body>
</html>
