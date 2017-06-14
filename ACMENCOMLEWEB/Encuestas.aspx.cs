using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassData;
using System.Data;

namespace ACMENCOMLEWEB
{
    public partial class Encuestas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEncuetas();
               // LoadSocios();

            }
        }

        public void LoadEncuetas ()
        {
            CEncuesta e = new CEncuesta();
            DataTable dt = e.GetEncuestas();
            gvListaEncuestas.DataSource = dt;
            gvListaEncuestas.DataBind();


        }
    }
}