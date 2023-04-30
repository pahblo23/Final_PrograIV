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
    public class cls_Rol_BLL
    {
        public void Actualizar_Rol(ref cls_Rol_DAL Obj_Rol_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Rol_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Rol_DAL.dtParametros);

            Obj_Rol_DAL.dtParametros.Rows.Add("@id_Rol", "1", Obj_Rol_DAL.iId_Rol);
            Obj_Rol_DAL.dtParametros.Rows.Add("@rol", "7", Obj_Rol_DAL.iId_Rol);


            Obj_Rol_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["ACTUALIZAR_ROL"],
                "NORMAL", Obj_Rol_DAL.dtParametros);
        }

        public void Borrar_Rol(ref cls_Rol_DAL Obj_Rol_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Rol_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Rol_DAL.dtParametros);

            Obj_Rol_DAL.dtParametros.Rows.Add("@id_Rol", "1", Obj_Rol_DAL.iId_Rol);

            Obj_Rol_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["BORRAR_ROL"],
                "NORMAL", Obj_Rol_DAL.dtParametros);
        }

        public void List_Filt_Rol(ref cls_Rol_DAL Obj_Rol_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            if (Obj_Rol_DAL.iId_Rol == 0)
            {
                Obj_Rol_DAL.dtParametros = null;
                Obj_Rol_DAL.dtDatos = Obj_WCF.ListarFiltrar("roles", ConfigurationManager.AppSettings["LISTAR_ROL"], null);
            }
            else
            {
                Obj_Rol_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Rol_DAL.dtParametros);

                Obj_Rol_DAL.dtParametros.Rows.Add("@filtro", "1", Obj_Rol_DAL.iId_Rol);

                Obj_Rol_DAL.dtDatos = Obj_WCF.ListarFiltrar("roles", ConfigurationManager.AppSettings["FILTRAR_ROL"],
                    Obj_Rol_DAL.dtParametros);
            }
        }

        public void Insertar_Rol(ref cls_Rol_DAL Obj_Rol_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Rol_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Rol_DAL.dtParametros);

            Obj_Rol_DAL.dtParametros.Rows.Add("@id_Rol", "1", Obj_Rol_DAL.iId_Rol);
            Obj_Rol_DAL.dtParametros.Rows.Add("@rol", "7", Obj_Rol_DAL.iId_Rol);


            Obj_Rol_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["INSERTAR_ROL"],
                "NORMAL", Obj_Rol_DAL.dtParametros);
        }
    }
    
}        

