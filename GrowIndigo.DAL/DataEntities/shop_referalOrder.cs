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
    
    public partial class shop_referalOrder
    {
        public int tr_id { get; set; }
        public string sender { get; set; }
        public string reciver { get; set; }
        public string orderid { get; set; }
        public string total_price { get; set; }
        public string walletBalanceAdded { get; set; }
        public Nullable<System.DateTime> tr_date { get; set; }
    }
}
