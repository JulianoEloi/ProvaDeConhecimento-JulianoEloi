<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProvaDeConhecimento_JulianoEloi.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        table td {
            position: relative;
            text-align: center;
            padding: 0;
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="loginForm" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="5" style="text-align: center; vertical-align: top">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login de Acesso"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="text-align: right; width:20%">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Usuário:"></asp:Label>
                    </td>
                    <td style="text-align: center; width:50%" colspan="2">
                        <asp:TextBox ID="user" runat="server" Font-Size="X-Large" Width="100%"></asp:TextBox>
                    </td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="text-align: right; width:20%">
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Senha:"></asp:Label>
                    </td>
                    <td style="text-align: center; width:50%" colspan="2">
                        <asp:TextBox ID="password" runat="server" Font-Size="X-Large" TextMode="Password" Width="100%"></asp:TextBox>
                    </td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="width:20%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="width:20%"></td>
                    <td style="text-align: center; width:25%">
                        <asp:Button ID="CancelBtn" runat="server" Font-Size="X-Large" OnClick="ButtonCancel" Text="Cancelar" />
                    </td>
                    <td style="width:25%">
                        <asp:Button ID="ConfirmBtn" runat="server" Font-Size="X-Large" OnClick="ButtonConfirm" Text="Acessar" />
                    </td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="width:20%"></td>
                    <td style="width:50%" colspan="2">
                        <asp:Label ID="message" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="width:25%"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
