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
    public class cls_Actividad_BLL
    {
        public void Actualizar_Actividad(ref cls_Actividad_DAL Obj_Actividad_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Actividad_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Actividad_DAL.dtParametros);

            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_Actividad", "1", Obj_Actividad_DAL.iId_Actividad);
            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_Equipo", "1", Obj_Actividad_DAL.iId_Equipo);
            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_usuario", "1", Obj_Actividad_DAL.iId_usuario);

            Obj_Actividad_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["ACTUALIZAR_ACTIVIDAD"],
                "NORMAL", Obj_Actividad_DAL.dtParametros);
        }

        public void Borrar_Actividad(ref cls_Actividad_DAL Obj_Actividad_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Actividad_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Actividad_DAL.dtParametros);

            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_actividad", "1", Obj_Actividad_DAL.iId_Actividad);

            Obj_Actividad_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["BORRAR_ACTIVIDAD"],
                "NORMAL", Obj_Actividad_DAL.dtParametros);
        }

        public void List_Filt_Activdad(ref cls_Actividad_DAL Obj_Actividad_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            if (Obj_Actividad_DAL.iId_Actividad == 0)
            {
                Obj_Actividad_DAL.dtParametros = null;
                Obj_Actividad_DAL.dtDatos = Obj_WCF.ListarFiltrar("actividad", ConfigurationManager.AppSettings["LISTAR_ACTIVIDAD"], null);
            }
            else
            {
                Obj_Actividad_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Actividad_DAL.dtParametros);

                Obj_Actividad_DAL.dtParametros.Rows.Add("@filtro", "1", Obj_Actividad_DAL.iId_Actividad);

                Obj_Actividad_DAL.dtDatos = Obj_WCF.ListarFiltrar("actividad", ConfigurationManager.AppSettings["FILTRAR_ACTIVIDAD"],
                    Obj_Actividad_DAL.dtParametros);
            }
        }

        public void Insertar_Actividad(ref cls_Actividad_DAL Obj_Actividad_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Actividad_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Actividad_DAL.dtParametros);

            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_actividad", "1", Obj_Actividad_DAL.iId_Actividad);
            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_Equipo", "1", Obj_Actividad_DAL.iId_Equipo);
            Obj_Actividad_DAL.dtParametros.Rows.Add("@id_usuario", "1", Obj_Actividad_DAL.iId_usuario);


            Obj_Actividad_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["INSERTAR_ACTIVIDAD"],
                "NORMAL", Obj_Actividad_DAL.dtParametros);
        }
    }
    
}        

