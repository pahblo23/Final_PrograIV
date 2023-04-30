using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Actividad_DAL
    {
        private int _iId_Actividad, _iId_Equipo, _iId_usuario;
        private string _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Actividad { get => _iId_Actividad; set => _iId_Actividad = value; }
        public int iId_Equipo { get => _iId_Equipo; set => _iId_Equipo = value; }
        public int iId_usuario { get => _iId_usuario; set => _iId_usuario = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}