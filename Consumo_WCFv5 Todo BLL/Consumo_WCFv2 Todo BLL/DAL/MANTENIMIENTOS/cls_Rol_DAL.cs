using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Rol_DAL
    {

        private int _iId_Rol;
        private string _rRol, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Rol { get => _iId_Rol; set => _iId_Rol = value; }
        public string rRol { get => _rRol; set => _rRol = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
