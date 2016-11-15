using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassData
{
    public class CSocios
    {
        Conexion con;
        public CSocios()
        {
            con = new Conexion();
        }

        public DataTable ListSocios()
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_AC_LISTAR_SOCIO", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@accion", 2);    
            dap.Fill(dt);
            cn.Close();

            return dt;

        }

        public DataTable Login(string  user , string  pass)
        {/**/
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_AC_LISTAR_SOCIO", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@accion", 1);
            dap.SelectCommand.Parameters.AddWithValue("@userName", user);
            dap.SelectCommand.Parameters.AddWithValue("@pass", pass);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }

    }
}
