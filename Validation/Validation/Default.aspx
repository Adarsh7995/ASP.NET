
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server">
             <asp:TableRow ID="tr1" runat="server">
                 <asp:TableCell ID="TableCell1" runat="server">Name:</asp:TableCell>
                 <asp:TableCell ID="TableCell2" runat="server"><asp:TextBox runat="server" ID="tbname"></asp:TextBox></asp:TableCell>
                 <asp:TableCell ID="TableCell3" runat="server"><asp:RequiredFieldValidator runat="server" ID="nameValidator" ErrorMessage="Enter Name" ControlToValidate="tbname"></asp:RequiredFieldValidator></asp:TableCell>
             </asp:TableRow>
            <asp:TableRow ID="tr2" runat="server">
                 <asp:TableCell ID="TableCell4" runat="server">Regd No.:</asp:TableCell>
                 <asp:TableCell ID="TableCell5" runat="server"><asp:TextBox runat="server" ID="tbregdno"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server"><asp:RequiredFieldValidator runat="server" ID="regdnoValidator" ErrorMessage="Enter Regdno." ControlToValidate="tbregdno"></asp:RequiredFieldValidator></asp:TableCell>
                 <asp:TableCell ID="TableCell7" runat="server"><asp:RegularExpressionValidator runat="server" ID="regdnoValidator1" ValidationExpression="[ylYL]\d{2}[Aa](ce|CE|cs|CS|ds|DS|it|IT|me|ME|ee|EE|ec|EC)\d{3}" ControlToValidate="tbregdno" ErrorMessage="Enter correct format of Regdno."></asp:RegularExpressionValidator></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow ID="tr3" runat="server">
                 <asp:TableCell ID="TableCell8" runat="server">Confirm Regdno.:</asp:TableCell>
                 <asp:TableCell ID="TableCell9" runat="server"><asp:TextBox runat="server" ID="tbcregdno"></asp:TextBox></asp:TableCell>
                 <asp:TableCell ID="TableCell10" runat="server"><asp:CompareValidator runat="server" ID="cregdnoValidator" ErrorMessage="Enter correct Regdno." ControlToCompare="tbregdno" ControlToValidate="tbcregdno"></asp:CompareValidator></asp:TableCell>
             </asp:TableRow>
            <asp:TableRow ID="tr4" runat="server">
                 <asp:TableCell ID="TableCell11" runat="server">Age:</asp:TableCell>
                 <asp:TableCell ID="TableCell12" runat="server"><asp:TextBox runat="server" ID="tbage"></asp:TextBox></asp:TableCell>
                 <asp:TableCell ID="TableCell13" runat="server"><asp:RangeValidator runat="server" ID="ageValidator" ErrorMessage="Age must be 18-50" ControlToValidate="tbage" MinimumValue="18" MaximumValue="50"></asp:RangeValidator></asp:TableCell>
             </asp:TableRow>
            <asp:TableRow ID="tr5" runat="server">
                 <asp:TableCell ID="TableCell14" runat="server">Branch:</asp:TableCell>
                 <asp:TableCell ID="TableCell15" runat="server"><asp:TextBox runat="server" ID="tbbranch"></asp:TextBox></asp:TableCell>
                 <asp:TableCell ID="TableCell16" runat="server"><asp:CustomValidator runat="server" ID="branchValidator" ControlToValidate="tbbranch" OnServerValidate="branchValidator_ServerValidator" ErrorMessage="Enter valid branch name"></asp:CustomValidator></asp:TableCell>
             </asp:TableRow>
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell17" runat="server"><asp:Button ID="submit" runat="server" Text="SUBMIT" OnClick="cmdSubmit_Click"></asp:Button></asp:TableCell>
                <asp:TableCell ID="TableCell18" runat="server"><asp:Button ID="clear" runat="server" Text="CLEAR" OnClick="cmdClear_Click"></asp:Button></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
