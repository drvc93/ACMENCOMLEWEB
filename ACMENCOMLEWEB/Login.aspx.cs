using ClassData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACMENCOMLEWEB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            string name = Request.Form["Name"];
            string user = txtEmail.Value;
            string pass = txtpass.Value;
            AutenticarUser(user, pass);

        }

        public void AutenticarUser(string user, string pass)
        {
            CSocios c = new CSocios();
            DataTable dt = c.Login(user, pass);
            if (dt.Rows.Count > 0)
            {
                Session["dniUser"] = dt.Rows[0]["Dni"].ToString();  //CodigoSocio
                Session["codUser"] = dt.Rows[0]["CodigoSocio"].ToString();
                Session["nomUser"] = dt.Rows[0]["Nombres"].ToString();
                Response.Redirect("~/Default.aspx");

            }

        }
    }
}