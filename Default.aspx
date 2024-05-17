
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Propiedades.aspx.cs" Inherits="Desemp2.Propiedades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="alquileres" runat="server" NavigateUrl="~/Alquileres.aspx">Gestion de Alquileres</asp:HyperLink>
            <br />
            <asp:HyperLink ID="propiedades" runat="server" NavigateUrl="~/Propiedades.aspx">Gestion de Propiedades</asp:HyperLink>
            <br />
            <asp:HyperLink ID="propietarios" runat="server" NavigateUrl="~/Propietarios.aspx">Gestion de Propietarios</asp:HyperLink>
        </div>
    </form>
</body>
</html>
