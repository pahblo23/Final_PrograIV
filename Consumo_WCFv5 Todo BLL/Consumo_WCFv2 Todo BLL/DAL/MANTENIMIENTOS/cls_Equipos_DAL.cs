using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BLL.MANTENIMIENTOS
{
    public class cls_Equipos_DAL
    {
        private int _iId_Equipo, _eEstado_Id,_tTorre_Id, _tTeclado_Id, _rRaton_Id, _oOtro_Id, _dDisco_Id,
            _mMemoria_Id, _mMonitor_Id;
        private string _sEstado, _sTipoTorre, _sTipoTeclado, _sTipoRaton, _sTipoOtro, _sTipoDisco, _sMarcaMemoria, _sMarcaMonitor;
        private string _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Equipo { get => _iId_Equipo; set => _iId_Equipo = value; }
        public int eEstado_Id { get => _eEstado_Id; set => _eEstado_Id = value; }
        public int tTorre_Id { get => _tTorre_Id; set => _tTorre_Id = value; }
        public int tTeclado_Id { get => _tTeclado_Id; set => _tTeclado_Id = value; }
        public int rRaton_Id { get => _rRaton_Id; set => _rRaton_Id = value; }
        public int oOtro_Id { get => _oOtro_Id; set => _oOtro_Id = value; }
        public int dDisco_Id { get => _dDisco_Id; set => _dDisco_Id = value; }
        public int mMemoria_Id { get => _mMemoria_Id; set => _mMemoria_Id = value; }
        public int mMonitor_Id { get => _mMonitor_Id; set => _mMonitor_Id = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
        public string sEstado { get => _sEstado; set => _sEstado = value; }
        public string sTipoTorre { get => _sTipoTorre; set => _sTipoTorre = value; }
        public string sTipoTeclado { get => _sTipoTeclado; set => _sTipoTeclado = value; }
        public string sTipoRaton { get => _sTipoRaton; set => _sTipoRaton = value; }
        public string sTipoOtro { get => _sTipoOtro; set => _sTipoOtro = value; }
        public string sTipoDisco { get => _sTipoDisco; set => _sTipoDisco = value; }
        public string sMarcaMemoria { get => _sMarcaMemoria; set => _sMarcaMemoria = value; }
        public string sMarcaMonitor { get => _sMarcaMonitor; set => _sMarcaMonitor = value; }
    }
}
