<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="ProvaDeConhecimento_JulianoEloi.Account.Usuário" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .dataTable {
            border-collapse: collapse;
        }

        .dataTable, .dataTable th, .dataTable td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <form id="usuarioForm" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Usuario "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Lista de Usuarios"></asp:Label>
            <asp:Button ID="AddUserBtn" runat="server" OnClick="addUserButton" style="color:white; background-color:darkseagreen;" Text="Adicionar" />
            <table id="usersTable" class="dataTable" style="width:50%" >
                <tr id="usersTableIndex" runat="server">
                    <td style="width:30%">CPF</td>
                    <td style="width:30%">Nome</td>
                    <td style="width:40%">Aniversario</td>
                </tr>
                <asp:Repeater ID="repUsers" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="width:30%">
                                <asp:Label ID="cpf" runat="server" Text='<%# Eval("Cpf") %>' /></td>
                            <td style="width:30%">
                                <asp:Label ID="name" runat="server" Text='<%# Eval("Name") %>' /></td>
                            <td style="width:40%">
                                <asp:Label ID="birthday" runat="server" Text='<%#Eval("BirthDay", "{0:dd/MM/yyyy}")%>' /></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <asp:Label ID="message" runat="server" style="color:red" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
