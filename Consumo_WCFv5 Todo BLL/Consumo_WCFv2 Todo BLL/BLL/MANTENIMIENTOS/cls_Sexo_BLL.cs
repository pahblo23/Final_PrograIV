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
    public class cls_Sexo_BLL
    {
        public void Actualizar_Sexo(ref cls_Sexo_DAL Obj_Sexo_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Sexo_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Sexo_DAL.dtParametros);

            Obj_Sexo_DAL.dtParametros.Rows.Add("@id_Sexo", "4", Obj_Sexo_DAL.iId_Sexo);
            Obj_Sexo_DAL.dtParametros.Rows.Add("@genero", "7", Obj_Sexo_DAL.gGenero);


            Obj_Sexo_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["ACTUALIZAR_SEXO"],
                "NORMAL", Obj_Sexo_DAL.dtParametros);
        }

        public void Borrar_Sexo(ref cls_Sexo_DAL Obj_Sexo_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Sexo_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Sexo_DAL.dtParametros);

            Obj_Sexo_DAL.dtParametros.Rows.Add("@id_Sexo", "4", Obj_Sexo_DAL.iId_Sexo);

            Obj_Sexo_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["BORRAR_SEXO"],
                "NORMAL", Obj_Sexo_DAL.dtParametros);
        }

        public void List_Filt_Sexo(ref cls_Sexo_DAL Obj_Sexo_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            if (Obj_Sexo_DAL.gGenero == string.Empty)
            {
                Obj_Sexo_DAL.dtParametros = null;
                Obj_Sexo_DAL.dtDatos = Obj_WCF.ListarFiltrar("sexo", ConfigurationManager.AppSettings["LISTAR_SEXO"], null);
            }
            else
            {
                Obj_Sexo_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Sexo_DAL.dtParametros);

                Obj_Sexo_DAL.dtParametros.Rows.Add("@filtro", "7", Obj_Sexo_DAL.gGenero);

                Obj_Sexo_DAL.dtDatos = Obj_WCF.ListarFiltrar("sexo", ConfigurationManager.AppSettings["FILTRAR_SEXO"],
                    Obj_Sexo_DAL.dtParametros);
            }
        }

        public void Insertar_Sexo(ref cls_Sexo_DAL Obj_Sexo_DAL)
        {
            WCF.BDClient Obj_WCF = new BDClient();

            Obj_Sexo_DAL.dtParametros = Obj_WCF.Get_DT_Param(Obj_Sexo_DAL.dtParametros);

            Obj_Sexo_DAL.dtParametros.Rows.Add("@id_Sexo", "4", Obj_Sexo_DAL.iId_Sexo);
            Obj_Sexo_DAL.dtParametros.Rows.Add("@genero", "7", Obj_Sexo_DAL.gGenero);


            Obj_Sexo_DAL.sMsjError = Obj_WCF.Ins_Upd_Delete(ConfigurationManager.AppSettings["INSERTAR_SEXO"],
                "NORMAL", Obj_Sexo_DAL.dtParametros);
        }
    }        
}
