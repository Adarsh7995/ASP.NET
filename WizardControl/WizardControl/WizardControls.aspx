<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardControls.aspx.cs" Inherits="Rich.WizardControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" OnFinishButtonClick="UpdateUI">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        Choose a Background Color:<br />
                <asp:DropDownList ID="lstBackColor" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                Choose a Foreground Color:<br />
                <asp:DropDownList ID="lstForeColor" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        Choose border style:<br />
                <asp:RadioButtonList ID="lstBorderStyle" runat="server" Width="190px" Height="100px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:RadioButtonList><br />
                <asp:CheckBox ID="chkDefaultPic" runat="server" Text="Add Default Picture" AutoPostBack="true" OnCheckedChanged="UpdateUI" /><br />
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                        <asp:DropDownList ID="lstFontNames" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                Specify a +ve numeric font size:<br />
                <asp:TextBox ID="txtFontSize" runat="server"></asp:TextBox><br />
                Enter the greeting text:<br />
                <asp:TextBox ID="txtGreeting" runat="server" Width="190px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <br />           
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
        <asp:Panel ID="pnlCard" Width="350px" Height="500px" HorizontalAlign="Center" Style="position:absolute;top:10px;left:300px" runat="server">
            <asp:Label ID="lblGreeting" runat="server" Text="" Width="300px" Height="150px"></asp:Label>
            <asp:Image ID="imgDefault" runat="server" width="250px" Height="170px"/>
    </asp:Panel>   
    </form>
</body>
</html>
