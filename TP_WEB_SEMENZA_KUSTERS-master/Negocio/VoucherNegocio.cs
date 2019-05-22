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


    }
}
