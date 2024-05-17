<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alquileres.aspx.cs" Inherits="Desemp2.Alquileres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>

        </div>
        <div>
            <h1>Alquileres</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Propietario"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListPropietario" runat="server" DataSourceID="SqlDataSource2" DataTextField="nomApe" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT [apellido], [nombre], [id], [apellido] + ' ' + [nombre] AS nomApe FROM [Propietarios]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Filtrar" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Borrar filtro" OnClick="Button3_Click" />
            <br />
            <br />

            <h2>Ingresar alquiler</h2>
            <asp:Label ID="Label2" runat="server" Text="Direccion"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListPropiedad" runat="server" DataSourceID="SqlDataSource3" DataTextField="direccion" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT [id], [calle] + '   ' + [altura] AS direccion  FROM [Propiedades]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Precio Alquiler"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxPrecio" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ingresar" />
            <br />
            <br />

        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None" DataKeyNames="id,Expr1,Expr2" HorizontalAlign="Left">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:BoundField DataField="calle" HeaderText="calle" ReadOnly="True" SortExpression="calle" />
                <asp:BoundField DataField="altura" HeaderText="altura" ReadOnly="True" SortExpression="altura" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" ReadOnly="True" SortExpression="apellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" ReadOnly="True" SortExpression="nombre" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
                <asp:BoundField DataField="Expr2" HeaderText="Expr2" InsertVisible="False" ReadOnly="True" SortExpression="Expr2" Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlquileresConnectionString1 %>" SelectCommand="SELECT Alquileres.id, Alquileres.monto, Propiedades.calle, Propiedades.altura, Propietarios.apellido, Propietarios.nombre, Propietarios.id AS Expr1, Propiedades.id AS Expr2 FROM Alquileres INNER JOIN Propiedades ON Alquileres.idPropiedad = Propiedades.id INNER JOIN Propietarios ON Propiedades.idPropietario = Propietarios.id" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Alquileres] WHERE [id] = @original_id" InsertCommand="INSERT INTO [Alquileres] ([idPropiedad], [monto]) VALUES (@idPropiedad, @monto)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Alquileres] SET [idPropiedad] = @idPropiedad, [monto] = @monto WHERE [id] = @original_id AND [idPropiedad] = @original_idPropiedad AND [monto] = @original_monto">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="original_id" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownListPropiedad" Name="idPropiedad" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBoxPrecio" Name="monto" PropertyName="Text" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idPropiedad" Type="Int32" />
                <asp:Parameter Name="monto" Type="Decimal" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_idPropiedad" Type="Int32" />
                <asp:Parameter Name="original_monto" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
