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
    
    public partial class User_Wallet_LogInfo
    {
        public long Id { get; set; }
        public string UserBalance { get; set; }
        public string user_code { get; set; }
        public Nullable<long> Fk_UserWalletId { get; set; }
        public Nullable<System.DateTime> CreateddDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual User_Wallet User_Wallet { get; set; }
    }
}