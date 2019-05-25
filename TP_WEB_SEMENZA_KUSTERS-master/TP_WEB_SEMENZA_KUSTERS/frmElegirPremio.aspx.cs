using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_WEB_SEMENZA_KUSTERS
{
    public partial class frmElegirPremio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPS4_Click(object sender, EventArgs e)
        {
            Session["Imagen"] = 1;
            Response.Redirect("frmIngresoDeDatos.aspx");
        }

        protected void btnXbox_Click(object sender, EventArgs e)
        {
            Session["Imagen"] = 2;
            Response.Redirect("frmIngresoDeDatos.aspx");
        }

        protected void btnStadia_Click(object sender, EventArgs e)
        {
            Session["Imagen"] = 3;
            Response.Redirect("frmIngresoDeDatos.aspx");
        }
    }
}