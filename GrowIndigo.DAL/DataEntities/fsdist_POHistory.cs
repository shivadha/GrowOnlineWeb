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
    
    public partial class fsdist_POHistory
    {
        public decimal PO_id { get; set; }
        public string cntr_code { get; set; }
        public decimal gr_id { get; set; }
        public string gr_code { get; set; }
        public string prd_code { get; set; }
        public string Batch_no { get; set; }
        public string org_code { get; set; }
        public string suborg_code { get; set; }
        public string bprd_catg { get; set; }
        public Nullable<double> bprd_acre { get; set; }
        public Nullable<System.DateTime> create_date { get; set; }
        public string createby { get; set; }
        public string postatus { get; set; }
        public string status { get; set; }
        public string Po_no { get; set; }
        public string prd_season { get; set; }
        public string prd_year { get; set; }
    }
}
