//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GrowIndigo.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Mandi_ProductMaster
    {
        public int Tr_Id { get; set; }
        public Nullable<int> CropId { get; set; }
        public string CategoryName { get; set; }
        public Nullable<int> VarietyId { get; set; }
        public string ProductAddress { get; set; }
        public string GeoAddress { get; set; }
        public string MobileNumber { get; set; }
        public string NetBankingId { get; set; }
        public string Quantity { get; set; }
        public string QuantityUnit { get; set; }
        public Nullable<int> Price { get; set; }
        public Nullable<decimal> ServiceTax { get; set; }
        public Nullable<int> TotalAmount { get; set; }
        public Nullable<System.DateTime> AvailabilityDate { get; set; }
        public string PaymentMethod { get; set; }
        public Nullable<bool> IsQualityTestNeeded { get; set; }
        public Nullable<bool> IsLogisticNeeded { get; set; }
        public string ProductImageUrl { get; set; }
        public Nullable<System.DateTime> Tr_Date { get; set; }
        public string State { get; set; }
        public string District { get; set; }
        public string Taluka { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public string ProductPriority { get; set; }
        public string SecondaryProductImage { get; set; }
        public string ProductDescription { get; set; }
    
        public virtual Crop_Master Crop_Master { get; set; }
        public virtual Crop_Master Crop_Master1 { get; set; }
        public virtual Variety_Master Variety_Master { get; set; }
    }
}
