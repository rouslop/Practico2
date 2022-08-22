<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPersona.aspx.cs" Inherits="Practico2.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="documento" runat="server" OnTextChanged="documento_TextChanged"></asp:TextBox>
    <asp:Button ID="buscar" runat="server" Text="Buscar" BackColor="#333333" ForeColor="White" OnClick="buscar_Click" />

    <asp:SqlDataSource ID="PersonasDS" runat="server" ConnectionString="<%$ ConnectionStrings:Practico2ConnectionString %>" SelectCommand="SELECT * FROM [Personas] WHERE ([Documento] = @Documento)">
        <SelectParameters>
            <asp:ControlParameter ControlID="documento" Name="Documento" PropertyName="Text" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="PersonasDS" ForeColor="Black" Height="209px" Width="603px">
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

</asp:Content>
