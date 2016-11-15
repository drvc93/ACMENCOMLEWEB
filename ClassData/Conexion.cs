using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ClassData
{
    public class Conexion
    {
        SqlConnection con;
        string Conn;
        public Conexion()
        {
            if (con == null)
                con = conexion();
        }

        public SqlConnection conexion()
        {
            Conn = Constantes.ConexionString;
            return new SqlConnection(Conn);
        }
    }
}