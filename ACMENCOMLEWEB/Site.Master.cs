using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACMENCOMLEWEB
{
    public partial class SiteMaster : MasterPage
    {
       
        protected void Page_Init(object sender, EventArgs e)
        {
           
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["nomUser"] != null)
                {
                    String nomuser = Session["nomUser"].ToString();
                    idUsuario.Text = nomuser;
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }

            }
        }
    }
}