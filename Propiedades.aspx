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

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Volver</asp:HyperLink>

        </div>
        <div>
            <h1>Propiedades</h1>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Calle"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxCalle" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Altura"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxAltura" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Propietario"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListPropietario" runat="server" DataSourceID="SqlDataSource2" DataTextField="apeNom" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT  [apellido], [nombre], [apellido] + ' ' + [nombre] AS apeNom, [id] FROM [Propietarios]"></asp:SqlDataSource>
            
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ingresar nuevo" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modificar registro seleccionado" OnClick="Button2_Click" />
            <br />
            <br />
        
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None" DataKeyNames="id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                <asp:BoundField DataField="altura" HeaderText="altura" SortExpression="altura" />
                <asp:BoundField DataField="idPropietario" HeaderText="idPropietario" SortExpression="idPropietario" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT Propiedades.id, Propiedades.calle, Propiedades.altura, Propiedades.idPropietario, Propietarios.apellido, Propietarios.nombre FROM Propiedades INNER JOIN Propietarios ON Propiedades.idPropietario = Propietarios.id" DeleteCommand="DELETE FROM [Propiedades] WHERE [id] = @original_id AND [calle] = @original_calle AND [altura] = @original_altura AND [idPropietario] = @original_idPropietario" InsertCommand="INSERT INTO [Propiedades] ([calle], [altura], [idPropietario]) VALUES (@calle, @altura, @idPropietario)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE Propiedades SET calle = @calle, altura = @altura, idPropietario = @idPropietario WHERE ([id] = @id)">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_calle" Type="String" />
                <asp:Parameter Name="original_altura" Type="String" />
                <asp:Parameter Name="original_idPropietario" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:FormParameter FormField="TextBoxCalle" Name="calle" Type="String" />
                <asp:FormParameter FormField="TextBoxAltura" Name="altura" Type="String" />
                <asp:FormParameter FormField="DropdownListPropietario" Name="idPropietario" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:FormParameter FormField="TextBoxCalle" Name="calle" Type="String" />
                <asp:FormParameter FormField="TextBoxAltura" Name="altura" Type="String" />
                <asp:ControlParameter ControlID="DropDownListPropietario" Name="idPropietario" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
