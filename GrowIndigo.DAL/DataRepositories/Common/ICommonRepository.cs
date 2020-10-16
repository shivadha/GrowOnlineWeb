using GrowIndigo.DAL.DataEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Common
{
   public interface ICommonRepository
    {
        string CheckMobileNumberExits(string mobileNumber);
        bool CheckExistingMobileNumber(string mobileNumber);
        List<Shop_New_Village_Master> FindVillageForTalukaCode(string vil_Code = "");
        List<Shop_New_Taluka_Master> FindTalukaForDistrictCode(string tal_Code = "");
        List<shop_cmp_image> GetCompanyForSlider();
        List<Shop_New_District_Master> BindStatebyDistrictId(string disc_Code = "");
        List<Shop_New_State_Master> BindAllState();
        List<Shop_New_District_Master> BindAllDistrict();
        List<Shop_New_Taluka_Master> BindAllTaluka();
        List<Shop_New_Village_Master> BindAllVillage();
        bool CheckExistingMobileNumberForLogin(string mobileNumber);
        bool CheckOTPForLogin(Shop_Retailer_UserMaster model);
        List<shop_cmp_image> GetCompanyProduct();
        bool CheckExistingMobileNumberforLogin(string mobileNumber);
        List<Shop_Shipping_address> GetAddressForUser(string MobileNumber);
        List<Shop_CartInfo> GetCartDetails(string MobileNumber);
       
        List<Shop_State_Master> GetAllStatewithProduct();
    }
}
