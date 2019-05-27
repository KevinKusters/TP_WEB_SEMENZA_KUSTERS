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

            if (voucherNegocio.ChequearVoucherXcliente(txbVoucher.Text))
            {
                Response.Write("<script>window.alert('El voucher ya fue utilizado');</script>");                
            }
            else if(voucherNegocio.VerificarVoucher(txbVoucher.Text))
            {
                Session["variable_sesion"] = txbVoucher.Text;
                Response.Redirect("frmElegirPremio.aspx");
            }            
            else
            {
                String csname1 = "PopupScript";
                Type cstype = this.GetType();
                
                ClientScriptManager cs = Page.ClientScript;
                
                if (!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    Response.Write("<script>window.alert('El número de voucher es incorrecto');</script>");
                }
            }

        }
    }
}