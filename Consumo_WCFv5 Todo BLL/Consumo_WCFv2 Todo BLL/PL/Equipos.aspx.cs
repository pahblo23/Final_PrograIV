using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL.MANTENIMIENTOS;
using DAL.MANTENIMIENTOS;

namespace PL
{
    public partial class Equipos : System.Web.UI.Page
    {
        #region VARIABLES GLOBALES 

        cls_Equipos_DAL Obj_Equipo_DAL = new cls_Equipos_DAL();
        cls_Equipos_BLL Obj_Equipo_BLL = new cls_Equipos_BLL();

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

            CargarDatosEquipos();
        }

        protected void btn_Eliminar_Click(object sender, ImageClickEventArgs e)
        {
            Obj_Equipo_DAL.iId_Equipo = Convert.ToInt32(txt_IdEquipo.Text.Trim());

            Obj_Equipo_BLL.Borrar_Equipo(ref Obj_Equipo_DAL);

            txt_IdEquipo.Text = string.Empty;
            txt_filtrar.Text = string.Empty;
            CargarDatosEquipos();
        }

        protected void btn_Guardar_Click(object sender, ImageClickEventArgs e)
        {
            Obj_Equipo_DAL.iId_Equipo = Convert.ToInt32(txt_IdEquipo.Text.Trim());
            Obj_Equipo_DAL.sEstado = txt_Estado.Text.Trim();
            Obj_Equipo_DAL.sTipoTorre = txt_TipoTorre.Text.Trim();
            Obj_Equipo_DAL.sTipoTeclado = txt_TipoTeclado.Text.Trim();
            Obj_Equipo_DAL.sTipoRaton = txt_TipoRaton.Text.Trim();
            Obj_Equipo_DAL.sTipoOtro = txt_TipoOtro.Text.Trim();
            Obj_Equipo_DAL.sTipoDisco = txt_TipoDisco.Text.Trim();
            Obj_Equipo_DAL.sMarcaMemoria = txt_MarcaMemoria.Text.Trim();
            Obj_Equipo_DAL.sMarcaMonitor = txt_MarcaMonitor.Text.Trim();

            Obj_Equipo_BLL.Actualizar_Equipo(ref Obj_Equipo_DAL);

            txt_IdEquipo.Text = string.Empty;
            txt_filtrar.Text = string.Empty;
            txt_Estado.Text.Trim();
            txt_TipoTorre.Text.Trim();
            txt_TipoTeclado.Text.Trim();
            txt_TipoRaton.Text.Trim();
            txt_TipoOtro.Text.Trim();
            txt_TipoDisco.Text.Trim();
            txt_MarcaMemoria.Text.Trim();
            txt_MarcaMonitor.Text.Trim();
            CargarDatosEquipos();
        }

        protected void btnFiltrar_Click(object sender, ImageClickEventArgs e)
        {
            CargarDatosEquipos();
        }

    protected void btn_Insertar_Click(object sender, ImageClickEventArgs e)
        {
            Obj_Equipo_DAL.iId_Equipo = Convert.ToInt32(txt_IdEquipo.Text.Trim());
            Obj_Equipo_DAL.sEstado = txt_Estado.Text.Trim();
            Obj_Equipo_DAL.sTipoTorre = txt_TipoTorre.Text.Trim();
            Obj_Equipo_DAL.sTipoTeclado = txt_TipoTeclado.Text.Trim();
            Obj_Equipo_DAL.sTipoRaton = txt_TipoRaton.Text.Trim();
            Obj_Equipo_DAL.sTipoOtro = txt_TipoOtro.Text.Trim();
            Obj_Equipo_DAL.sTipoDisco = txt_TipoDisco.Text.Trim();
            Obj_Equipo_DAL.sMarcaMemoria = txt_MarcaMemoria.Text.Trim();
            Obj_Equipo_DAL.sMarcaMonitor = txt_MarcaMonitor.Text.Trim();

            Obj_Equipo_BLL.Actualizar_Equipo(ref Obj_Equipo_DAL);

            txt_IdEquipo.Text = string.Empty;
            txt_filtrar.Text = string.Empty;
            txt_Estado.Text.Trim();
            txt_TipoTorre.Text.Trim();
            txt_TipoTeclado.Text.Trim();
            txt_TipoRaton.Text.Trim();
            txt_TipoOtro.Text.Trim();
            txt_TipoDisco.Text.Trim();
            txt_MarcaMemoria.Text.Trim();
            txt_MarcaMonitor.Text.Trim();
            CargarDatosEquipos();
        }
    private void CargarDatosEquipos()
    {
        if (txt_filtrar.Text == string.Empty)
        {
            Obj_Equipo_DAL.iId_Equipo = 0;
        }
        else
        {
            Obj_Equipo_DAL.iId_Equipo = Convert.ToInt32(txt_filtrar.Text.Trim());
        }
        Obj_Equipo_BLL.List_Filt_Equipo(ref Obj_Equipo_DAL);

        dgv_Equipo.DataSource = null;
        dgv_Equipo.DataSource = Obj_Equipo_DAL.dtDatos;
        dgv_Equipo.DataBind();
    }
}
}