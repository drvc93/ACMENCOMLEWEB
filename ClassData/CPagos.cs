using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassData
{
    public class CPagos
    {
        Conexion con;


        public CPagos()
        {
            con = new Conexion();
        }

        public DataTable ListaPagos()
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_AC_CONSULTAPAGOS_WEB", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@accion","1" );
            dap.Fill(dt);
            cn.Close();

            return dt;

        }

       public  string  UpdatePagoConfrimado (int codpago , string DniSocio)
        {
            SqlConnection cn = con.conexion();
            string result  = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPU_AC_CONFIRMARPAGO";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@DniSocio", DniSocio);
                sqlcmd.Parameters.AddWithValue("@CodPago", codpago);
                
                int rowsafect =sqlcmd.ExecuteNonQuery();
                if ( rowsafect >0)  {

                    result = "OK";
                    }
            }



            catch (SqlException ex)
            {

              
                result = ex.Message;


            }

            return result;
        }
    }
}
