using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace DAL.MANTENIMIENTOS
{
    public class cls_Monitores_DAL
    {
        private int _iId_Monitor;
        private string _tTipo_Monitor, _mMarca_Monitor, _mModelo_Monitor, _tTipo_Memoria, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Monitor { get => _iId_Monitor; set => _iId_Monitor = value; }
        public string tTipo_Monitor { get => _tTipo_Monitor; set => _tTipo_Monitor = value; }
        public string mMarca_Monitor { get => _mMarca_Monitor; set => _mMarca_Monitor = value; }
        public string mModelo_Monitor { get => _mModelo_Monitor; set => _mModelo_Monitor = value; }
        public string tTipo_Memoria { get => _tTipo_Memoria; set => _tTipo_Memoria = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
