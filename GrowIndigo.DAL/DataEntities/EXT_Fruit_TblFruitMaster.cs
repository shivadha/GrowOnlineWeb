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
    
    public partial class EXT_Fruit_TblFruitMaster
    {
        public long fruitID { get; set; }
        public string fruitName { get; set; }
        public string fruitDescription { get; set; }
        public string fruitImage { get; set; }
        public string fruitUnitType { get; set; }
        public Nullable<decimal> fruitPrice { get; set; }
        public Nullable<long> createdBy { get; set; }
        public Nullable<System.DateTime> createdDate { get; set; }
        public Nullable<int> flag { get; set; }
    }
}