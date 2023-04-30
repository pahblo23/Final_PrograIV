using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BLL.MANTENIMIENTOS
{
    public class cls_discos_DAL
    {
        private int _iId_Disco;
        private string _tTipo_Disco,_sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Disco { get => _iId_Disco; set => _iId_Disco = value; }
        public string tTipo_Disco { get => _tTipo_Disco; set => _tTipo_Disco = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
