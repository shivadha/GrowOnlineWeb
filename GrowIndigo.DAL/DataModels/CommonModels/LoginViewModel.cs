using GrowIndigo.Utilities.Resources;
using System;

using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace GrowIndigo.DAL.DataModels.CommonModels
{
    public class LoginViewModel
    {

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_MobileNumber")]
        [RegularExpression(@"^[0-9]{10}$", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_MobileNumberCorrectFormat")]
        [Remote("CheckExistingMobileNumberforLogin", "Account", HttpMethod = "POST", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_LgnMobilecheck")]
        public string MobileNumber { get; set; }

        [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_OtpRequired")]
        [Display]
        [RegularExpression(@"^[0-9]{4}$", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_OTPCorrectFormat")]
        //[Remote("RemoteCheckOtpForLogin", "Account", HttpMethod = "POST", ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_OTPNotfound")]
        public string OTP { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }

        public string ReturnUrl { get; set; }
        [Required]
      
      
        public string Email { get; set; }

        public string AmountToBePaid { get; set; }

        public string PasswordSalt { get; set; }
        public DateTime? lastLogin { get; set; }

        public string FullName { get; set; }

        public string fcsid { get; set; }
        public string Tokenid { get; set; }

        //[Display(ResourceType = typeof(Resource), Name = "LegalResource_Common_Rememberme")]
        public bool RememberMe { get; set; }

        [RegularExpression(@"^[^<>.,?;:'()!~%\-_@#/*""\s]+$", ErrorMessage = "Please enter valid username")]
        [Display(Name = "Username")]
        [MaxLength(40, ErrorMessage = "Username cannot be longer than 40 characters.")]
        public string UserName { get; set; }

        public string FirstName { get; set; } = "";
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsVerified { get; set; }
        public string LastName { get; set; }
        public long Id { get; set; }
        public long? Fk_PartnerId { get; set; }

        public Guid Guid { get; set; }

        public string CultureName { get; set; }

        public string RoleName { get; set; }
        public long RoleId { get; set; }

        public bool IsSubscription { get; set; }

        public string path { get; set; }
        public bool IsPartnerSubscription { get; set; }

        public long PartnerUserId { get; set; }
        // for login history 


        public long LoginHistoryId { get; set; }
        public string IpAddress { get; set; }
        public Nullable<System.DateTime> LogInDate { get; set; }
        public Nullable<long> Fk_UserId { get; set; }
        public Nullable<bool> AcceptTerm { get; set; }
        public Nullable<int> LoginAttempts { get; set; }
        public string LoginAttemprtResetDateTime { get; set; }

        public string Address { get; set; }
        public string ZipCode { get; set; }

        public string countrycode { get; set; }
        public string statecode { get; set; }
        public string city { get; set; }

    }
}
