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
    public class cls_Equipos_BLL
    {
        public void Actualizar_Equipo(ref cls_Equipos_DAL Obj_Equipos_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Equipos_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Equipos_DAL.dtParametros);

            Obj_Equipos_DAL.dtParametros.Rows.Add("@id_Equipo", "1", Obj_Equipos_DAL.iId_Equipo);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@estado_Id", "1", Obj_Equipos_DAL.eEstado_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@torre_Id", "1", Obj_Equipos_DAL.tTorre_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@raton_id", "1", Obj_Equipos_DAL.rRaton_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@otro_Id", "1", Obj_Equipos_DAL.oOtro_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@disco_Id", "1", Obj_Equipos_DAL.dDisco_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@memoria_Id", "1", Obj_Equipos_DAL.mMemoria_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@monitor_Id", "1", Obj_Equipos_DAL.mMonitor_Id);
            Obj_Equipos_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["ACTUALIZAR_EQUIPO"],
                "NORMAL", Obj_Equipos_DAL.dtParametros);
        }

        public void Borrar_Equipo(ref cls_Equipos_DAL Obj_Equipos_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Equipos_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Equipos_DAL.dtParametros);

            Obj_Equipos_DAL.dtParametros.Rows.Add("@id_Equipo", "1", Obj_Equipos_DAL.iId_Equipo);

            Obj_Equipos_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["BORRAR_EQUIPO"],
                "NORMAL", Obj_Equipos_DAL.dtParametros);
        }

        public void List_Filt_Equipo(ref cls_Equipos_DAL Obj_Equipos_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            if (Obj_Equipos_DAL.iId_Equipo == 0)
            {
                Obj_Equipos_DAL.dtParametros = null;
                Obj_Equipos_DAL.dtDatos = Obj_WCF.ListarFiltrar("equipos", ConfigurationManager.AppSettings["LISTAR_EQUIPO"], null);
            }
            else
            {
                Obj_Equipos_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Equipos_DAL.dtParametros);

                Obj_Equipos_DAL.dtParametros.Rows.Add("@filtro", "1", Obj_Equipos_DAL.iId_Equipo);

                Obj_Equipos_DAL.dtDatos = Obj_WCF.ListarFiltrar("equipos", ConfigurationManager.AppSettings["FILTRAR_EQUIPO"],
                    Obj_Equipos_DAL.dtParametros);
            }
        }

        public void Insertar_Equipo(ref cls_Equipos_DAL Obj_Equipos_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Equipos_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Equipos_DAL.dtParametros);

            Obj_Equipos_DAL.dtParametros.Rows.Add("@id_Equipo", "1", Obj_Equipos_DAL.iId_Equipo);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@estado_Id", "1", Obj_Equipos_DAL.eEstado_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@torre_Id", "1", Obj_Equipos_DAL.tTorre_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@raton_id", "1", Obj_Equipos_DAL.rRaton_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@otro_Id", "1", Obj_Equipos_DAL.oOtro_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@disco_Id", "1", Obj_Equipos_DAL.dDisco_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@memoria_Id", "1", Obj_Equipos_DAL.mMemoria_Id);
            Obj_Equipos_DAL.dtParametros.Rows.Add("@monitor_Id", "1", Obj_Equipos_DAL.mMonitor_Id);

            Obj_Equipos_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["INSERTAR_EQUIPO"],
                "NORMAL", Obj_Equipos_DAL.dtParametros);
        }
    }
    
}        

