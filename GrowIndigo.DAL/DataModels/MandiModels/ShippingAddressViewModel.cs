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
    public class ShippingAddressViewModel
    {






        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_ReceiverNameREq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_ReceiverName")]
        public string reciver_name { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_ShippingAddressREq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_ShippingAddress")]
        public string ship_address { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_CityReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_City")]
        public string city { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Pincode")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Pincode")]
        public string pincode { get; set; }



        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Email")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Email")]
        //[RegularExpression("^[_a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "Email Address is not in correct format.")]
        //[Remote("CheckExistingEmail", "Account", HttpMethod = "POST", ErrorMessage = "Email already exists.")]
        public string email_id { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_HouseNoRequired")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Message_HouseNoReq")] 
        public string HouseNumber { get; set; }

        public string StateCode { get; set; }
        public string DistrictCode { get; set; }
        public string TalukaCode { get; set; }
        public string VillageCode { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Streetline1")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Message_StreetLine1Display")]
        public string StreetLine1 { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Streetline2")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Message_Streetline2Display")]
        public string StreetLine2 { get; set; }

        [Required]
        // [Display(ResourceType = typeof(Resource), Name = "State")]
        [Display(Name = "State")]
        public string StateId { get; set; }

        [Required]
        // [Display(ResourceType = typeof(Resource), Name = "District")]
        [Display(Name = "District")]
        public string DistrictId { get; set; }

        [Required]
        // [Display(ResourceType = typeof(Resource), Name = "Taluka")]
        [Display(Name = "Taluka")]
        public string TalukaId { get; set; }

        [Required]
        // [Display(ResourceType = typeof(Resource), Name = "Village")]
        [Display(Name = "Village")]
        public string VillageId { get; set; }
       


        public string landline_number { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public int tr_id { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_MobileNumber")]
        [RegularExpression(@"^[0-9]{10}$", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberCorrectFormat")]
        public string ship_mobile { get; set; }
        public string retailer_id { get; set; }
        public string retailer_mobile { get; set; }
    }
}
