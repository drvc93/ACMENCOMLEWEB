using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassData;

namespace ACMENCOMLEWEB
{
    public partial class ListaPagos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                LoadPagos();
                

            }

        }

        public void LoadPagos()
        {
            CPagos P = new CPagos();
            GVListaPagos.DataSource = P.ListaPagos();
            GVListaPagos.DataBind();

        }

        protected void GVListaPagos_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {

        }

        
    }
}