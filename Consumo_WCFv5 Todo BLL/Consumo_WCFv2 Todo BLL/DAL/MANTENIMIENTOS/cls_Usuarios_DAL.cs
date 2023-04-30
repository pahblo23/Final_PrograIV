using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace DAL.MANTENIMIENTOS
{
    public class cls_Usuarios_DAL
    {
        private int _iId_Usuario, _rRol_Id;
        private char _sSexo;
        private string _nNombre, _tTelefono, _eEmail, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Usuario { get => _iId_Usuario; set => _iId_Usuario = value; }
        public int rRol_Id { get => _rRol_Id; set => _rRol_Id = value; }
        public char sSexo { get => _sSexo; set => _sSexo = value; }
        public string nNombre { get => _nNombre; set => _nNombre = value; }
        public string tTelefono { get => _tTelefono; set => _tTelefono = value; }
        public string eEmail { get => _eEmail; set => _eEmail = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
