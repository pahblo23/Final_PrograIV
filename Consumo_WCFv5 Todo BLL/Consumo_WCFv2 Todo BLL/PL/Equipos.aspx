<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="PL.Equipos" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Recursos/Estilos/Estilos_Botones.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <asp:Label ID="lbl_Equipo" runat="server" Text="Id Equipo: "></asp:Label>
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
                <p>Edición de Datos de Equipo.</p>
                <div>
                    <asp:Label ID="lbl_IdEquipo" runat="server" Text="Id: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                     <asp:TextBox ID="txt_IdEquipo" runat="server"></asp:TextBox>                   &nbsp;
                    &nbsp;
                    <asp:Label ID="lbl_Estado" runat="server" Text="Estado: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddlEstado" runat="server"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_TipoTorre" runat="server" Text="Tipo Torre: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddltipotorre" runat="server"></asp:DropDownList>
                    &nbsp;
                    &nbsp;
                    <asp:Label ID="lbl_TipoTeclado" runat="server" Text="Tipo Teclado: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddltipoteclado" runat="server"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_TipoRaton" runat="server" Text="Tipo Raton: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddlTipoRaton" runat="server"></asp:DropDownList>
                    &nbsp;
                    &nbsp;
                    <asp:Label ID="lbl_TipoOtro" runat="server" Text="Tipo Otro: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddlTipoOtro" runat="server"></asp:DropDownList>
                    <br />
                    <asp:Label ID="lbl_TipoDisco" runat="server" Text="Marca: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddltipodisco" runat="server"></asp:DropDownList>
                    &nbsp;
                    &nbsp;
                    <asp:Label ID="lbl_MarcaMemoria" runat="server" Text="Marca Memoria: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddlmarcamemoria" runat="server"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_MarcaMonitor" runat="server" Text="Marca Monitor: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                   <asp:DropDownList ID="ddlmarcamonitor" runat="server"></asp:DropDownList>
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
                <asp:GridView ID="dgv_Equipo" runat="server" Width="900px"></asp:GridView>
            </div>
</asp:Content>
