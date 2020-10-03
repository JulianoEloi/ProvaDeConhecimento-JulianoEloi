<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BemVindo.aspx.cs" Inherits="ProvaDeConhecimento_JulianoEloi.Account.BemVindo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="bemVindoForm" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="5" style="text-align: center; vertical-align: top">
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="BEM VINDO "></asp:Label>
                        <asp:Label ID="userName" runat="server" Font-Size="X-Large" Text="<Nome_DO_USUARIO>"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="width:20%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align: center; vertical-align: top">
                        <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Hoje é dia "></asp:Label>
                        <asp:Label ID="date" runat="server" Font-Size="Large" Text="<dd/MM/aaaa>"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Size="Large" Text=" e o horario é "></asp:Label>
                        <asp:Label ID="time" runat="server" Font-Size="Large" Text="<hh:mm>"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:5%"></td>
                    <td style="width:20%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                    <td style="width:25%"></td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align: center; vertical-align: top">
                        <asp:Button ID="ListCreateBtn" runat="server" Font-Size="X-Large" OnClick="ListCreateButton" Text="Listar/Criar" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
