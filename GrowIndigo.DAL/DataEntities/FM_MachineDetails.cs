//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GrowIndigo.DAL.DataEntities
{
    using System;
    using System.Collections.Generic;
    
    public partial class FM_MachineDetails
    {
        public int id { get; set; }
        public string Machinename { get; set; }
        public string manufacture { get; set; }
        public string model { get; set; }
        public string fueltype { get; set; }
        public string specifications { get; set; }
        public Nullable<System.DateTime> purchasedate { get; set; }
        public Nullable<System.DateTime> delivarydate { get; set; }
        public string machinecode { get; set; }
        public Nullable<System.DateTime> entrydate { get; set; }
        public string entryby { get; set; }
    }
}