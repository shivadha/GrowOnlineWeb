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
    
    public partial class EXT_TblCropCategoryMaster
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EXT_TblCropCategoryMaster()
        {
            this.EXT_TblCropProductMaster = new HashSet<EXT_TblCropProductMaster>();
        }
    
        public long cropCategoryID { get; set; }
        public string cropCategoryName { get; set; }
        public Nullable<long> cropID { get; set; }
        public Nullable<long> createdBy { get; set; }
        public Nullable<System.DateTime> createdDate { get; set; }
        public Nullable<int> flag { get; set; }
    
        public virtual EXT_TblCropMaster EXT_TblCropMaster { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EXT_TblCropProductMaster> EXT_TblCropProductMaster { get; set; }
    }
}
