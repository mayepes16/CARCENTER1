//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CARCENTER
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cliente
    {
        public Cliente()
        {
            this.Factura = new HashSet<Factura>();
        }
    
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public string TipoDoc { get; set; }
        public int Doc_Cliente { get; set; }
        public Nullable<int> Celular { get; set; }
        public string Direccion { get; set; }
        public string CorreoElectronico { get; set; }
    
        public virtual ICollection<Factura> Factura { get; set; }
    }
}
