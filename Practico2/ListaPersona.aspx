<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPersona.aspx.cs" Inherits="Practico2.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <asp:TextBox ID="documento" runat="server" OnTextChanged="documento_TextChanged"></asp:TextBox>
    <asp:Button ID="buscar" runat="server" Text="Buscar" BackColor="#333333" ForeColor="White" OnClick="buscar_Click" />

    <br />

    <asp:SqlDataSource ID="PersonasDS" runat="server" ConnectionString="<%$ ConnectionStrings:Practico2ConnectionString %>" SelectCommand="SELECT * FROM [Personas]" OnSelecting="PersonasDS_Selecting">
</asp:SqlDataSource>

    <br />

    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="PersonasDS" ForeColor="Black" Height="239px" Width="490px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        &nbsp;</p>

        NUEVA PERSONA<br />
        Nombres<br />
        <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
    <br />
        Apellidos<br />
        <asp:TextBox ID="apellido" runat="server"></asp:TextBox>
    <br />
        Documento<br />
        <asp:TextBox ID="cedula" runat="server"></asp:TextBox>

        <br />
        &nbsp;<asp:Button ID="confirmar" runat="server" BackColor="Black" ForeColor="White" OnClick="confirmar_Click" Text="Confirmar" />

</asp:Content>
