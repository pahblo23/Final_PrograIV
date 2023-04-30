using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace DAL.MANTENIMIENTOS
{
    public class cls_Otros_DAL
    {

        private int _iId_Otro;
        private string _tTipo_Otro, _mMarca_Otro, _mModelo_Otro, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Otro { get => _iId_Otro; set => _iId_Otro = value; }
        public string tTipo_Otro { get => _tTipo_Otro; set => _tTipo_Otro = value; }
        public string mMarca_Otro { get => _mMarca_Otro; set => _mMarca_Otro = value; }
        public string mModelo_Otro { get => _mModelo_Otro; set => _mModelo_Otro = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
