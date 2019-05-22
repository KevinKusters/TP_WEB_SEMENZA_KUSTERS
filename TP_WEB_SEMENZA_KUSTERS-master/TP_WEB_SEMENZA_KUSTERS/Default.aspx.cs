using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP_WEB_SEMENZA_KUSTERS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {         
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            VoucherNegocio voucherNegocio = new VoucherNegocio();
            if(voucherNegocio.VerificarVoucher(txbVoucher.Text))
            {
                Response.Redirect("frmElegirPremio.aspx");
            }
            else
            {
                String csname1 = "PopupScript";
                Type cstype = this.GetType();
                // Get a ClientScriptManager reference from the Page class.
                ClientScriptManager cs = Page.ClientScript;
                // Check to see if the startup script is already registered.
                if (!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    StringBuilder cstext1 = new StringBuilder();
                    cstext1.Append("<script type=text/javascript> alert('El número de Voucher es incorrecto!') </");
                    cstext1.Append("script>");
                    cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                }
            }

        }
    }
}