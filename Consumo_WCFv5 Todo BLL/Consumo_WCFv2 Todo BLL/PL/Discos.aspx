<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Discos.aspx.cs" Inherits="PL.Discos" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Recursos/Estilos/Estilos_Botones.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <asp:Label ID="lbl_Disco" runat="server" Text="Id Disco: "></asp:Label>
            &nbsp;
            <asp:TextBox ID="txt_filtrar" runat="server"></asp:TextBox>
             &nbsp;
             &nbsp;
             &nbsp;
             &nbsp;
            <asp:ImageButton ID="btnFiltrar" src="Recursos/Imagenes/lupa.png" runat="server" Height="30px" Width="30px" OnClick="btnFiltrar_Click" />
             &nbsp;
             &nbsp;
            <input id="btn_editar" type="button"  value="Editar"  onclick="toggle()" />
                <br />
                <br />
                <br />
            </div>
            <div id="div_Editar" style="display:none">
                <p>Edición de Datos de Disco.</p>
                <div>
                    <asp:Label ID="lbl_IdDisco" runat="server" Text="Id: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:TextBox ID="txt_IdDisco" runat="server" Height="31px" Width="375px"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    <asp:Label ID="lbl_TipoDisco" runat="server" Text="Tipo: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:TextBox ID="txt_TipoDisco" runat="server" Height="31px" Width="375px"></asp:TextBox>
                    <br />
                    <br />
                    <div style="text-align:center">
                        <asp:ImageButton ID="btn_Guardar" src="Recursos/Imagenes/modificar.png" Height="30px" Width="30px" runat="server" Text="Actualizar" OnClick="btn_Guardar_Click"  />
                        &nbsp;
                        &nbsp;
                        <asp:ImageButton ID="btn_Eliminar" src="Recursos/Imagenes/eliminar.png" Height="30px" Width="30px" runat="server" Text="Eliminar" OnClick="btn_Eliminar_Click"/>
                        &nbsp;
                        &nbsp;
                        <asp:ImageButton ID="btnInsertar" src="Recursos/Imagenes/guardar.png" Height="30px" Width="30px" runat="server" Text="Insertar" OnClick="btn_Insertar_Click"  />
                    </div>
                   
                </div>
                <br />
        
            </div>
            <div>
                <asp:GridView ID="dgv_Disco" runat="server" Width="900px"></asp:GridView>
            </div>
</asp:Content>
