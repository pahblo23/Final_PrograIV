using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Ratones_DAL
    {
        private int _iId_Raton;
        private string _tTipo_Raton, _mMarca_Raton, _mModelo_Raton, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Raton { get => _iId_Raton; set => _iId_Raton = value; }
        public string tTipo_Raton { get => _tTipo_Raton; set => _tTipo_Raton = value; }
        public string mMarca_Raton { get => _mMarca_Raton; set => _mMarca_Raton = value; }
        public string mModelo_Raton { get => _mModelo_Raton; set => _mModelo_Raton = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
