using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace GrowIndigo.BAL.BussinessServices.Common
{
   public interface ICommonService
    {
         string CheckMobileNumberExits(string mobileNumber);
        List<SelectListItem> FindVillageForTalukaCode(string vilCode = "");
        List<SelectListItem> BindStatebyDistrictId(string disCode);
        List<SelectListItem> FindTalukaForDistrictCode(string talCode);
        List<SelectListItem> BindAllState();
        List<SelectListItem> BindAllDistrict();
        List<SelectListItem> BindAllTaluka();
        List<SelectListItem> BindAllVillage();
        bool CheckExistingMobileNumber(string mobileNumber);
        List<shop_cmp_image> GetCompanyForSlider();

        bool CheckExistingMobileNumberForLogin(string mobileNumber);
        LoginViewModel CheckOTPForLogin(LoginViewModel objLoginViewModel);
        bool CheckExistingMobileNumberforLogin(string mobileNumber);
        List<Shop_Shipping_address> GetAddressForUser(string MobileNumber);
        List<Shop_CartInfo> GetCartDetails(string MobileNumber);
        List<shop_cmp_image> GetCompanyProduct();
        List<Shop_State_Master> GetAllStatewithProduct();




    }
}
