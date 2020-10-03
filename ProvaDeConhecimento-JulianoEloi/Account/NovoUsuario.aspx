<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NovoUsuario.aspx.cs" Inherits="ProvaDeConhecimento_JulianoEloi.Account.NovoUsuário" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table td {
            position: relative;
            text-align: center;
            padding: 0;
            margin: 0;
        }
        table td .btn{
            float:right;
            margin:2px;
        }
    </style>
</head>
<body>
    <form id="novoUsuarioForm" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3" style="text-align:left">
                        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Usuario"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="width: 45%; text-align:left">
                        <asp:Label ID="Label2" runat="server" Text="CPF"></asp:Label>
                        <br />
                        <asp:TextBox ID="cpf" runat="server" Width="100%" placeholder="000.000.000-00"></asp:TextBox>
                    </td>
                    <td style="width: 10%"></td>
                    <td style="width: 45%; text-align:left" >
                        <asp:Label ID="Label3" runat="server" Text="Nome"></asp:Label>
                        <br />
                        <asp:TextBox ID="name" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:left">
                        <asp:Label ID="Label4" runat="server" Text="Data Nascimento"></asp:Label>
                        <br />
                        <asp:TextBox ID="birthday" runat="server" Width="100%" placeholder="dd/mm/aaaa"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="saveBtn" class="btn" runat="server" OnClick="SaveButton" Text="Salvar" />
                        <asp:Button ID="welcomeBtn" class="btn" runat="server" OnClick="WelcomeButton" Text="Bem Vindo" />
                        <asp:Button ID="usersBtn" class="btn" runat="server" OnClick="UsersButton" Text="Lista de Usuários" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="message" style="color:red" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
