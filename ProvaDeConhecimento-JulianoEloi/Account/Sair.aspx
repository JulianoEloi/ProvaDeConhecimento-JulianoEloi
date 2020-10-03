<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sair.aspx.cs" Inherits="ProvaDeConhecimento_JulianoEloi.Account.Sair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Logout() {
            alert("Desconectado");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" Style="text-align: center" Font-Size="XX-Large" runat="server" Text="Obrigado e"></asp:Label>
            <br />
            <asp:Label ID="Label2" Style="text-align: center" Font-Size="XX-Large" runat="server" Text="volte sempre"></asp:Label>
        </div>
    </form>
</body>
</html>
