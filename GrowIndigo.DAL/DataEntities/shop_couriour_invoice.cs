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
    
    public partial class shop_couriour_invoice
    {
        public int tr_id { get; set; }
        public string order_id { get; set; }
        public string invoiceNo { get; set; }
        public Nullable<System.DateTime> invoiceDate { get; set; }
        public string invoiceImage1 { get; set; }
        public string invoiceImage2 { get; set; }
        public string AddedBy { get; set; }
        public Nullable<System.DateTime> tr_date { get; set; }
    }
}
