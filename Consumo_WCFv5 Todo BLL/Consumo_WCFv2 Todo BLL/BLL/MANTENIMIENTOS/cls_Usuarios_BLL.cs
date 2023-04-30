using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.MANTENIMIENTOS;
using BLL.WCF;
using System.Configuration;

namespace BLL.MANTENIMIENTOS
{
    public class cls_Usuarios_BLL
    {
        public void Actualizar_Usuario(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Usuarios_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Usuarios_DAL.dtParametros);

            Obj_Usuarios_DAL.dtParametros.Rows.Add("@id_usuario", "1", Obj_Usuarios_DAL.iId_Usuario);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@nombre", "7", Obj_Usuarios_DAL.nNombre);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@telefono", "7", Obj_Usuarios_DAL.tTelefono);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@rol_id", "1", Obj_Usuarios_DAL.rRol_Id);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@email", "7", Obj_Usuarios_DAL.eEmail);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@Sexo", "4", Obj_Usuarios_DAL.sSexo);

            Obj_Usuarios_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["ACTUALIZAR_USUARIO"],
                "NORMAL", Obj_Usuarios_DAL.dtParametros);
        }

        public void Borrar_Usuario(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Usuarios_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Usuarios_DAL.dtParametros);

            Obj_Usuarios_DAL.dtParametros.Rows.Add("@id_usuario", "1", Obj_Usuarios_DAL.iId_Usuario);

            Obj_Usuarios_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["BORRAR_USUARIO"],
                "NORMAL", Obj_Usuarios_DAL.dtParametros);
        }

        public void List_Filt_Usuario(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            if (Obj_Usuarios_DAL.iId_Usuario == 0)
            {
                Obj_Usuarios_DAL.dtParametros = null;
                Obj_Usuarios_DAL.dtDatos = Obj_WCF.ListarFiltrar("usuario", ConfigurationManager.AppSettings["LISTAR_USUARIO"], null);
            }
            else
            {
                Obj_Usuarios_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Usuarios_DAL.dtParametros);

                Obj_Usuarios_DAL.dtParametros.Rows.Add("@filtro", "1", Obj_Usuarios_DAL.iId_Usuario);

                Obj_Usuarios_DAL.dtDatos = Obj_WCF.ListarFiltrar("usuario", ConfigurationManager.AppSettings["FILTRAR_USUARIO"],
                    Obj_Usuarios_DAL.dtParametros);
            }
        }

        public void Insertar_Usuario(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Usuarios_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Usuarios_DAL.dtParametros);

            Obj_Usuarios_DAL.dtParametros.Rows.Add("@id_usuario", "1", Obj_Usuarios_DAL.iId_Usuario);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@nombre", "7", Obj_Usuarios_DAL.nNombre);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@telefono", "7", Obj_Usuarios_DAL.tTelefono);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@rol_id", "1", Obj_Usuarios_DAL.rRol_Id);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@email", "7", Obj_Usuarios_DAL.eEmail);
            Obj_Usuarios_DAL.dtParametros.Rows.Add("@Sexo", "4", Obj_Usuarios_DAL.sSexo);

            Obj_Usuarios_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["INSERTAR_USUARIO"],
                "NORMAL", Obj_Usuarios_DAL.dtParametros);
        }
    }
    
}        