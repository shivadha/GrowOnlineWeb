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
    
    public partial class shop_Courier_Details
    {
        public int tr_id { get; set; }
        public string order_id { get; set; }
        public string Docket_no { get; set; }
        public string img1 { get; set; }
        public string img2 { get; set; }
        public string FreightCharges { get; set; }
        public string FreightPaidBy { get; set; }
        public Nullable<System.DateTime> addedDate { get; set; }
        public string AddedBy { get; set; }
        public Nullable<System.DateTime> tr_date { get; set; }
    }
}