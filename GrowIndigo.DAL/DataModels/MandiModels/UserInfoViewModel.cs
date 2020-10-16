using GrowIndigo.Utilities.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace GrowIndigo.DAL.DataModels.MandiModels
{
    public class UserInfoViewModel
    {


        [Required]
        public string State { get; set; }

        [Required]
        public long StateId { get; set; }


        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_FirmNameReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_FirmName")]
        public string FirmName { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_MobileNumber")]
        [RegularExpression(@"^[0-9]{10}$", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberCorrectFormat")]
        [Remote("CheckMobileNumber", "Account", HttpMethod = "POST", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberAlreadyExits")]
        public string MobileNumber { get; set; }


      
    }
}
