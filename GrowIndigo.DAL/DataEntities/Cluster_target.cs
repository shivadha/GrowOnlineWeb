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
    
    public partial class Cluster_target
    {
        public string cntr_code { get; set; }
        public string prd_year { get; set; }
        public string prd_season { get; set; }
        public string Prd_code { get; set; }
        public string Cls_code { get; set; }
        public Nullable<byte> Cls_rank { get; set; }
        public Nullable<float> trg_area { get; set; }
        public Nullable<double> trg_qty { get; set; }
        public string Eval_code { get; set; }
        public Nullable<double> Plan_Qty { get; set; }
        public Nullable<float> Plan_Area { get; set; }
        public string prd_catg { get; set; }
        public string All_catg { get; set; }
        public string Prd_dummy { get; set; }
    }
}