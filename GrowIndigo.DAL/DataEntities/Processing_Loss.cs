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
    
    public partial class Processing_Loss
    {
        public string Cntr_code { get; set; }
        public string prd_year { get; set; }
        public string prd_season { get; set; }
        public string prd_code { get; set; }
        public Nullable<double> unp_qty { get; set; }
        public Nullable<float> Prc_loss { get; set; }
        public Nullable<float> Rem_loss { get; set; }
    }
}
