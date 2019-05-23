using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using AccesoDatos;

namespace Negocio
{
    public class VoucherNegocio
    {
        AccesoDatosManager accesoDatos = new AccesoDatosManager();

        //FUNCION PARA VALIDAR SI EL VOUCHER ES CORRECTO
        public bool VerificarVoucher(string voucher)
        {
            accesoDatos.setearConsulta("select * from VOUCHERS where ID= '"+ voucher +"'");
            accesoDatos.abrirConexion();
            accesoDatos.ejecutarConsulta();
            if(accesoDatos.Lector.Read())
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    public void AgregarVoucher_x_Cliente(string voucher, int dni)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearConsulta("INSERT INTO VouchersXClientes (DNICLIENTE, IDVOUCHER) VALUES (@DNI,@IDVOUCHER)");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@DNI", dni);
                accesoDatos.Comando.Parameters.AddWithValue("@IDVOUCHER", voucher);

                accesoDatos.abrirConexion();
                accesoDatos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public bool ChequearVoucherXcliente(string voucher)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearConsulta("SELECT * FROM VouchersXClientes WHERE IDVOUCHER = @IDVOUCHER");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@IDVOUCHER", voucher);

                accesoDatos.abrirConexion();
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}
