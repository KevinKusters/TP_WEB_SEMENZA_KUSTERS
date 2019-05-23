using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Negocio;
using AccesoDatos;


namespace Negocio
{
    public class ClienteNegocio
    {
        public bool chequearDNI(int dni)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearConsulta("select * from CLIENTES where DNI= '" + dni + "'");
               // accesoDatos.setearConsulta("SELECT DNI FROM CLIENTES WHERE DNI LIKE @dni");
               // accesoDatos.Comando.Parameters.Clear();
               // accesoDatos.Comando.Parameters.AddWithValue("@dni", dni);

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

       public Cliente Buscar_cliente(int dni)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            Cliente Registro;
            try
            {
                accesoDatos.setearConsulta("SELECT * FROM CLIENTES WHERE DNI = @dni");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@dni", dni);

                accesoDatos.abrirConexion();
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())
                {
                    Registro = new Cliente();
                    Registro.DNI = (int)accesoDatos.Lector["dni"];
                    Registro.Nombre = accesoDatos.Lector["nombre"].ToString();
                    Registro.Apellido = accesoDatos.Lector["apellido"].ToString();
                    Registro.Email = accesoDatos.Lector["email"].ToString();

                    return Registro;
                }
                else
                {
                    Registro = new Cliente();
                    Registro.DNI = -1;

                    return Registro;
                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }
        
        public void cargarCliente(Cliente nuevo)
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                accesoDatos.setearConsulta("INSERT INTO CLIENTES (DNI, NOMBRE, APELLIDO, EMAIL) VALUES (@DNI,@NOMBRE,@APELLIDO,@EMAIL)");
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@DNI", nuevo.DNI);
                accesoDatos.Comando.Parameters.AddWithValue("@NOMBRE", nuevo.Nombre);
                accesoDatos.Comando.Parameters.AddWithValue("@APELLIDO", nuevo.Apellido);
                accesoDatos.Comando.Parameters.AddWithValue("@EMAIL", nuevo.Email);

                accesoDatos.abrirConexion();
                accesoDatos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
