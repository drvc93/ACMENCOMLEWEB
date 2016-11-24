using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassData;
using Telerik.Web.UI;

namespace ACMENCOMLEWEB
{
    public partial class ListaSocios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadSocios();

            }
        }

        public void LoadSocios()
        {
            CSocios c = new CSocios();
            GVListaSocios.DataSource = c.ListSocios();
            GVListaSocios.DataBind();
        }

        protected void GVListaSocios_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            if (e.CommandName == "EditarSocio")
            {/**/
                GridDataItem it = e.Item as GridDataItem;
                string tex = it["Dni"].Text;
                tex = tex.ToUpper();
              
            }
        }

        protected void actualizarEstado_Click(object sender, EventArgs e)
        {
           // Response.Redirect("Login.aspx");
        }
    }
}