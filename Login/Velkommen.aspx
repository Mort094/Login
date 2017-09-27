<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Velkommen.aspx.cs" Inherits="Velkommen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Velkommen bruger</p>
            <asp:Repeater runat="server" ID="repeater_userInfo">
                <ItemTemplate>
                    <p><%# Eval("userName") %></p>
                    <p><%# Eval("userEmail") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>

</body>
</html>
