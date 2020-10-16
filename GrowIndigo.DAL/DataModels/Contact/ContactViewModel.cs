using GrowIndigo.Utilities.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.Contact
{
    public class ContactViewModel
    {
        public long Id { get; set; }

        [Required]
        public string Name { get; set; }
        [Required]
        public string Subject { get; set; }

        [RegularExpression("^[_a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_EmailCorrectFormat")]
        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Email")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Email")]
        public string Email { get; set; }
       

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_MobileNumber")]
        [RegularExpression(@"^[0-9]{10}$", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberCorrectFormat")]
      public string MobileNumber { get; set; }
        [Required]
        public string Message { get; set; }
    }
}
