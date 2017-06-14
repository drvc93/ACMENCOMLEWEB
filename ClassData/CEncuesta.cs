using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassData
{
    public  class CEncuesta
    {
        Conexion con;

        public CEncuesta() {
            con = new Conexion();
        }

        public DataTable GetEncuestas()
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_AC_CONSULTAS_GENERALES", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@accion", "5");
            dap.SelectCommand.Parameters.AddWithValue("@codSocio", 0);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }
    }
}
