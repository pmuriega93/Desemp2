<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Propietarios.aspx.cs" Inherits="Desemp2.Propietarios" %>

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
            <h1>Propietarios</h1>
        </div>
        <div>
            <p>Ingresar nuevo propietario:</p>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlquileresConnectionString2 %>" SelectCommand="SELECT [id], [apellido], [nombre] FROM [Propietarios]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Propietarios] WHERE [id] = @original_id AND [apellido] = @original_apellido AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [Propietarios] ([apellido], [nombre]) VALUES (@apellido, @nombre)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Propietarios] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @original_id AND [apellido] = @original_apellido AND [nombre] = @original_nombre">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:FormParameter FormField="TextBox2" Name="apellido" Type="String" />
                <asp:FormParameter FormField="TextBox1" Name="nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
