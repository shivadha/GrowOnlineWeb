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
    
    public partial class Shop_State_Master
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shop_State_Master()
        {
            this.Shop_Product_Master = new HashSet<Shop_Product_Master>();
        }
    
        public int state_code { get; set; }
        public string state_disc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Shop_Product_Master> Shop_Product_Master { get; set; }
    }
}
