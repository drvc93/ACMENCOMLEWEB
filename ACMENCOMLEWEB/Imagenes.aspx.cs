using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACMENCOMLEWEB
{
    public partial class Imagenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] filesindirectory = Directory.GetFiles(Server.MapPath("~/imgs"));
            List<String> images = new List<string>(filesindirectory.Count());

            foreach (string item in filesindirectory)
            {
                images.Add(String.Format("~/imgs/{0}", System.IO.Path.GetFileName(item)));
            }

            RepeaterImages.DataSource = images;
            RepeaterImages.DataBind();

        }
    }
}