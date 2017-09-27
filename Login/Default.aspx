<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Email" runat="server" />
            <br />
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Du skal skrive din email"
                ControlToValidate="tb_email"
                ValidationGroup="login"
                Display="Static"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Ugyldig email!"
                 ControlToValidate="tb_email"
                Display="Static"
                ValidationGroup="login"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ></asp:RegularExpressionValidator>
            <br />
            <asp:Label Text="Kodeord" runat="server" />
            <br />
            <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="Du skal skrive dit kodeord"
                ControlToValidate="tb_password"
                ValidationGroup="login"
                Display="Static"
                ></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button Text="Login" runat="server" ID="btn_login" OnClick="btn_login_Click" ValidationGroup="login" />
        </div>
    </form>
</body>
</html>
