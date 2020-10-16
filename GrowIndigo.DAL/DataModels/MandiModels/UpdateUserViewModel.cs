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
    public class UpdateUserViewModel
    {
        //user general info



        [MaxLength(150, ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_RetailerFirstNameMaxLength")]
        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_RetailerFirstName")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_RetailerFirstName")]
        public string retailer_name { get; set; }

        [MaxLength(150, ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_RetailerLastNameMaxLength")]
        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_RetailerLastName")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_RetailerLastName")]
        public string retailer_last_name { get; set; }

        //disabled this for user  update
        public string mobile_number { get; set; }

        [RegularExpression("^[_a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_EmailCorrectFormat")]
        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Email")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Email")]
        public string email_id { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_DOB")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_DOB")]
        public string birth_date { get; set; }

        //[Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_DOB")]
        //[Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_DOB")]
        //public DateTime DOB { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Address")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Address")]
        public string address { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_houseNo")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_houseNo")]
        public string houseNo { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Streetline1")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Streetline1")]
        public string streetLine1 { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Streetline2")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Streetline12")]
        public string streetLine2 { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_State")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_State")]
        public string state { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_District")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_District")]
        public string district { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Taluka")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Taluka")]
        public string taluka { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Town")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Town")]
        public string town { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Pincode")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Pincode")]
        public string pincode { get; set; }






        //User Documents

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_cstn_Number")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_cstn_Number")]
        public string cstn_number { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_vatNumber")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_vatNumber")]
        public string vat_number { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_PanNumber")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_PanNumber")]
        [RegularExpression("^([A-Za-z]){5}([0-9]){4}([A-Za-z]){1}$", ErrorMessage = "Invalid PAN Number")]
        public string pan_number { get; set; }


        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_license_no")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_license_no")]
        public string license_no { get; set; }

       // [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_imeiNumber")]
       // [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_imeiNumber")]
        public string imei_number { get; set; }

       [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_gst_number")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_gst_number")]
        //[RegularExpression("^([0 - 9]{2}[a - zA - Z]{4}([a - zA - Z]{1}|[0-9]{1})[0-9]{4}[a-zA-Z]{1}([a - zA - Z]|[0-9]){3}){0,15}$", ErrorMessage = "Invalid GST Number")]
        
        public string gst_number { get; set; }


        //related to firm


       // [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_UserCompany")]
       // [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_UserCompany")]
        public string user_company { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_FirmNameReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_FirmName")]
        public string firm_name { get; set; }

        [Required]
        [Display(Name = "License validity")]
    
        public string seed_license_validity { get; set; }





        //not in view
        public string user_code { get; set; }
        public string User_pwd { get; set; }
        public string geo_address { get; set; }
        public string sap_retailer_id { get; set; }
        public string fcm_token { get; set; }
        public string fcm_subscription_topic { get; set; }
        public bool profileUpdate { get; set; }
        public Nullable<System.DateTime> EntryDate { get; set; }
        public string bank_account_number { get; set; }
        public string depo { get; set; }
        public Nullable<byte> Flag { get; set; }



    }
}
