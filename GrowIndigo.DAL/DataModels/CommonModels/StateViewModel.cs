using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
    public class StateViewModel
    {
        [Required]
        [Display(Name ="State Name")]
        public Nullable<int> Prd_StateId { get; set; }



        public string prd_State { get; set; }


        public Nullable<long> StateId { get; set; }
    }
}
