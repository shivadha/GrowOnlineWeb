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
    
    public partial class Retailer_TBM
    {
        public byte Rid { get; set; }
        public string State { get; set; }
        public string District { get; set; }
        public string RBM_Code { get; set; }
        public string RBM_Name { get; set; }
        public string RBM_Email { get; set; }
        public Nullable<int> TBM_Code { get; set; }
        public string TBM_Name { get; set; }
        public string TBM_Email { get; set; }
        public string TBM_HQ { get; set; }
        public Nullable<byte> Flag { get; set; }
    }
}
