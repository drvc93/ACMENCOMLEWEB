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
    public partial class ListaPagos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                LoadPagos();
                Page.GetPostBackEventReference(Page);

                

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

        /*    if (e.CommandName == "ConfirmarPago")
            {
                GridDataItem it = e.Item as GridDataItem;
                string tex = it["codPago"].Text;
                int codpago = Convert.ToInt32(tex);
                Session["codPago"] = codpago;

                ;

                
            }
        */
        }

        protected void GVListaPagos_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            
        }

        protected void ConfirmPago_Click(object sender, EventArgs e)
        {

            LinkButton btn = (LinkButton)sender;
            GridDataItem item = (GridDataItem)btn.NamingContainer;
            TableCell cell = (TableCell)item["codPago"];
            string tex = cell.Text;
              //tex = Convert.ToString( Session["codPago"]);
             //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "Script", "Confirm('" + tex + "');", true);
            string confirmValue = Request.Form["confirm_value"];

            if (confirmValue == "Si")
            {/**/
             divcorrect.Visible = true;
            }
        }

        
    }
}