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
    
    public partial class EXT_Fruit_TblTransctionMaster
    {
        public long TrID { get; set; }
        public Nullable<long> userID { get; set; }
        public string userName { get; set; }
        public string userMobileNo { get; set; }
        public string userAddress { get; set; }
        public Nullable<long> fruitID { get; set; }
        public Nullable<int> fruitQuantity { get; set; }
        public Nullable<decimal> fruitPrice { get; set; }
        public Nullable<decimal> totalAmount { get; set; }
        public string rzp_order_id { get; set; }
        public string paymentStatus { get; set; }
        public Nullable<System.DateTime> TransDate { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public string timeStamp { get; set; }
        public string rzp_payment_id { get; set; }
        public string rzp_signature { get; set; }
        public Nullable<int> flag { get; set; }
        public Nullable<System.DateTime> TrDate { get; set; }
    
        public virtual EXT_Fruit_TblUserMaster EXT_Fruit_TblUserMaster { get; set; }
    }
}
