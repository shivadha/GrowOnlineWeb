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
    
    public partial class shop_revalidation_details
    {
        public int tr_id { get; set; }
        public string prd_name { get; set; }
        public string item_code { get; set; }
        public string prd_state { get; set; }
        public string revalidationPrice { get; set; }
        public Nullable<System.DateTime> tr_date { get; set; }
    }
}
