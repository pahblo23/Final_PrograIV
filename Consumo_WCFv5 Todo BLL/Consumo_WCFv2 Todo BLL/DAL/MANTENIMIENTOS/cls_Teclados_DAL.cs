using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Teclados_DAL
    {
        private int _iId_Teclado;
        private string _tTipo_Teclado, _mMarca_Teclado, _mModelo_Teclado, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Teclado { get => _iId_Teclado; set => _iId_Teclado = value; }
        public string tTipo_Teclado { get => _tTipo_Teclado; set => _tTipo_Teclado = value; }
        public string mMarca_Teclado { get => _mMarca_Teclado; set => _mMarca_Teclado = value; }
        public string mModelo_Teclado { get => _mModelo_Teclado; set => _mModelo_Teclado = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
