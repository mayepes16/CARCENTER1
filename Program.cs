using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CARCENTER
{
    class Program
    {
        static void Main(string[] args)
        {

            using (CARCENTEREntities db = new CARCENTEREntities())
                
            {


                /*INSERTAR REGISTRO*/
                /*Cliente oCliente = new Cliente();
                oCliente.PrimerNombre = "Karen";
                oCliente.SegundoNombre = "Paola";
                oCliente.PrimerApellido = "Rebollo";
                oCliente.SegundoNombre = "Guerrero";
                oCliente.TipoDoc = "CC";
                oCliente.Doc_Cliente = 1140873271;
                oCliente.Celular = 12342;
                oCliente.Direccion = "Cra 11 # 73 - 12";
                oCliente.CorreoElectronico = "Prueba@gamil.com";

                db.Cliente.Add(oCliente);
                db.SaveChanges();*/

                /*EDITAR REGISTRO*/
                /* Cliente OCliente = db.Cliente.Where(d => d.Doc_Cliente == 1140873827).First();

                 OCliente.PrimerNombre = "Julian";

                 System.Data.EntityState state = db.Entry(OCliente).State;
                 db.SaveChanges();*/

                /*ELIMINAR REGISTRO*/
                Cliente OCliente = db.Cliente.Where(d => d.Doc_Cliente == 1140873827).First();

                db.Cliente.Remove(OCliente);
                 db.SaveChanges();

                var lst = db.Cliente;
                foreach (var Cliente in lst)
                {
                    Console.WriteLine(Cliente.PrimerNombre);
                }
            }

            Console.Read();
        }
    }
}
