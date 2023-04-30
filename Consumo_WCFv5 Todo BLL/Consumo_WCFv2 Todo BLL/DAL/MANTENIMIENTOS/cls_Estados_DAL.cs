﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.MANTENIMIENTOS
{
    public class cls_Estados_DAL
    {
        private int _iId_Estado, _iId_Equipo;
        private string _tTipo_Estado, _sMsjError;
        private DataTable _dtDatos, _dtParametros;

        public int iId_Estado { get => _iId_Estado; set => _iId_Estado = value; }
        public int iId_Equipo { get => _iId_Equipo; set => _iId_Equipo = value; }
        public string tTipo_Estado { get => _tTipo_Estado; set => _tTipo_Estado = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
    }
}
