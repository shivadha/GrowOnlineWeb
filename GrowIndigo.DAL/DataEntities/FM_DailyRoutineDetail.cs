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
    
    public partial class FM_DailyRoutineDetail
    {
        public int routineid { get; set; }
        public string machineno { get; set; }
        public string fuellevel { get; set; }
        public string waterlevel { get; set; }
        public string blade { get; set; }
        public string belt { get; set; }
        public string chain { get; set; }
        public string machinecleanliness { get; set; }
        public string bladeplateform { get; set; }
        public string rotatorwheel { get; set; }
        public string blank { get; set; }
        public string other { get; set; }
        public Nullable<System.DateTime> entrydate { get; set; }
        public string entryby { get; set; }
    }
}
