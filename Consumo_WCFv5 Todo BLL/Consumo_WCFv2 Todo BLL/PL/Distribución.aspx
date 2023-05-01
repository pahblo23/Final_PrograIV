<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Distribución.aspx.cs" Inherits="PL.Distribución" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div>
            <asp:Label ID="lbl_Distribucion" runat="server" Text="Id Distribucion: "></asp:Label>
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
            <div id="div_Editar" style="display:block">
                <p>Asignar equipo a empleado</p>
                <div>
                    <asp:Label ID="lbl_IdDistribucion" runat="server" Text="Id: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:TextBox ID="txt_IdDistribucion" runat="server" Height="31px" Width="375px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_IdEmpleado" runat="server" Text="Id Empleado: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddl_IdEmpleado" runat="server" Height="31px" Width="375px" ></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_IdEquipo" runat="server" Text="Id Equipo: "></asp:Label> 
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="ddl_IdEquipo" runat="server" Height="31px" Width="375px"></asp:DropDownList>
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
                <asp:GridView ID="dgv_Distribucion" runat="server" Width="900px"></asp:GridView>
            </div>
</asp:Content>

