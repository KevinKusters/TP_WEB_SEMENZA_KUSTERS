using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;


namespace TP_WEB_SEMENZA_KUSTERS
{
    public partial class frmIngresoDeDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if(txtDni.Text=="" || txtApellido.Text==""||txtNombre.Text == ""|| txtEmail.Text == "")
            {
                String csname1 = "PopupScript";
                Type cstype = this.GetType();                
                ClientScriptManager cs = Page.ClientScript;  
                
                if (!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    StringBuilder cstext1 = new StringBuilder();
                    cstext1.Append("<script type=text/javascript> alert('Debe completar todos los campos') </");
                    cstext1.Append("script>");
                    cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                }
            }
            else
            {
                ClienteNegocio negocio = new ClienteNegocio();
                VoucherNegocio vouchernegocio = new VoucherNegocio();
                string voucher;
                voucher = Session["variable_sesion"].ToString();

                if (negocio.chequearDNI(int.Parse(txtDni.Text)))
                {
                    if (vouchernegocio.ChequearVoucherXcliente(voucher))
                    {
                        Response.Write("<script>window.alert('El codigo de voucher ya fue utilizado');</script>");
                    }
                    else
                    {
                        vouchernegocio.AgregarVoucher_x_Cliente(voucher,int.Parse(txtDni.Text));  
                    }                   
                }                                    
                else
                {
                    Cliente nuevo = new Cliente();

                    nuevo.DNI = int.Parse(txtDni.Text);
                    nuevo.Nombre = txtNombre.Text;
                    nuevo.Apellido = txtApellido.Text;
                    nuevo.Email = txtEmail.Text;

                    if (vouchernegocio.ChequearVoucherXcliente(voucher))
                    {
                        Response.Write("<script>window.alert('El codigo de voucher ya fue utilizado');</script>");
                    }
                    else
                    {
                        negocio.cargarCliente(nuevo);
                        vouchernegocio.AgregarVoucher_x_Cliente(voucher, nuevo.DNI);                    

                         String csname1 = "PopupScript";
                         Type cstype = this.GetType();
                         ClientScriptManager cs = Page.ClientScript;

                         if (!cs.IsStartupScriptRegistered(cstype, csname1))
                         {
                            StringBuilder cstext1 = new StringBuilder();
                            cstext1.Append("<script type=text/javascript> alert('Registro completado') </");
                            cstext1.Append("script>");
                            cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                         }

                        Response.Redirect("Default.aspx");

                    }               
                }              
            }           
        }

        protected void txtDni_TextChanged(object sender, EventArgs e)
        {
            ClienteNegocio negocio = new ClienteNegocio();
            Cliente auxiliar = new Cliente();

            if (negocio.chequearDNI(int.Parse(txtDni.Text)))
            {
                auxiliar=negocio.Buscar_cliente(int.Parse(txtDni.Text));

                txtNombre.Text = auxiliar.Nombre;
                txtApellido.Text = auxiliar.Apellido;
                txtEmail.Text = auxiliar.Email;                
            } 
        }
    }
}