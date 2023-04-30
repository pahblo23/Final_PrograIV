using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Sexo_DAL
    {
        private char _iId_Sexo;
        private string _gGenero, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public char iId_Sexo { get => _iId_Sexo; set => _iId_Sexo = value; }
        public string gGenero { get => _gGenero; set => _gGenero = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
