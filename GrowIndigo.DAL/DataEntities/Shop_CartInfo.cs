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
    
    public partial class Shop_CartInfo
    {
        public long Id { get; set; }
        public string RetailerMobileNumber { get; set; }
        public string Price { get; set; }
        public Nullable<int> Quantity { get; set; }
        public string ShippingCharge { get; set; }
        public string TotalPrice { get; set; }
        public Nullable<int> ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductImageUrl { get; set; }
        public string ProductDescription { get; set; }
        public string ProductGST { get; set; }
    
        public virtual Shop_Retailer_UserMaster Shop_Retailer_UserMaster { get; set; }
    }
}