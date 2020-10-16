using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Product;
using GrowIndigo.DAL.DataRepositories.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace GrowIndigo.BAL.BussinessServices.Common
{
    public class CommonService : ICommonService
    {
        #region Dependencies Injection with initialization

        private ICommonRepository objICommon = null;


        public CommonService(ICommonRepository _objICommonRepository)
        {
            objICommon = _objICommonRepository;

        }

        #endregion

        public string CheckMobileNumberExits(string mobileNumber = "")
        {
            var checkMobileNumber = objICommon.CheckMobileNumberExits(mobileNumber);
            return checkMobileNumber;
        }
        public bool CheckExistingMobileNumber(string mobileNumber)
        {
            return objICommon.CheckExistingMobileNumber(mobileNumber);
        }

        public bool CheckExistingMobileNumberforLogin(string mobileNumber)
        {
            return objICommon.CheckExistingMobileNumberforLogin(mobileNumber);
        }

        public LoginViewModel CheckOTPForLogin(LoginViewModel objLoginViewModel)
        {
            Shop_Retailer_UserMaster objShop_Retailer_UserMaster = new Shop_Retailer_UserMaster();
            objShop_Retailer_UserMaster.mobile_number = objLoginViewModel.MobileNumber;
            objShop_Retailer_UserMaster.User_pwd = objLoginViewModel.OTP;
            var user = objICommon.CheckOTPForLogin(objShop_Retailer_UserMaster);
            if (user)
            {
                LoginViewModel objUserDetailsModel = new LoginViewModel();
                if (objLoginViewModel.MobileNumber != null)
                {
                    objUserDetailsModel = new LoginViewModel
                    {
                        MobileNumber = objLoginViewModel.MobileNumber
                    };
                    return objUserDetailsModel;
                }
                else
                {
                    return null;
                }

            }
            else
            {
                return null;
            }

        }

        public bool CheckExistingMobileNumberForLogin(string mobileNumber)
        {
            return objICommon.CheckExistingMobileNumberForLogin(mobileNumber);
        }

        public List<SelectListItem> BindStatebyDistrictId(string disCode="")
        {
            try
            {
                ////get statelist by id.
                var statelist = objICommon.BindStatebyDistrictId(disCode).Select(y => new SelectListItem { Text = y.dist_desc, Value = y.dist_code.ToString() }).ToList();

                //return entity object as per result.
                return statelist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<SelectListItem> FindTalukaForDistrictCode(string talCode = "")
        {
            try
            {
                ////get statelist by id.
                var statelist = objICommon.FindTalukaForDistrictCode(talCode).Select(y => new SelectListItem { Text = y.talq_desc, Value = y.talq_code.ToString() }).ToList();

                //return entity object as per result.
                return statelist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        


             public List<SelectListItem> FindVillageForTalukaCode(string vilCode = "")
        {
            try
            {
                ////get statelist by id.
                var statelist = objICommon.FindVillageForTalukaCode(vilCode).Select(y => new SelectListItem { Text = y.vil_desc, Value = y.vil_code.ToString() }).ToList();

                //return entity object as per result.
                return statelist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<SelectListItem> BindAllState()
        {
            try
            {
                var countrylist = objICommon.BindAllState().Select(y => new SelectListItem { Text = y.stat_desc, Value = y.stat_code.ToString() }).OrderBy(x => x.Text).ToList();
                //countrylist.Insert(0, new SelectListItem { Text = Resource.LegalResource_Common_PleaseSelectcountry, Value = "0" });
                return countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<SelectListItem> BindAllDistrict()
        {
            try
            {
                var countrylist = objICommon.BindAllDistrict().Select(y => new SelectListItem { Text = y.dist_desc, Value = y.dist_code.ToString() }).OrderBy(x => x.Text).ToList();
                //countrylist.Insert(0, new SelectListItem { Text = Resource.LegalResource_Common_PleaseSelectcountry, Value = "0" });
                return countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<SelectListItem> BindAllTaluka()
        {
            try
            {
                var countrylist = objICommon.BindAllTaluka().Select(y => new SelectListItem { Text = y.talq_desc, Value = y.talq_code.ToString() }).OrderBy(x => x.Text).ToList();
                //countrylist.Insert(0, new SelectListItem { Text = Resource.LegalResource_Common_PleaseSelectcountry, Value = "0" });
                return countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<SelectListItem> BindAllVillage()
        {
            try
            {
                var countrylist = objICommon.BindAllVillage().Select(y => new SelectListItem { Text = y.vil_desc, Value = y.vil_code.ToString() }).OrderBy(x => x.Text).ToList();
                //countrylist.Insert(0, new SelectListItem { Text = Resource.LegalResource_Common_PleaseSelectcountry, Value = "0" });
                return countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Shop_Shipping_address> GetAddressForUser(string MobileNumber)
        {
            var getAddressDetail = objICommon.GetAddressForUser(MobileNumber);


            //string stateid= getAddressDetail.
            //var getState = objICommon.GetStateName(MobileNumber);
            //var getDistrict = objICommon.GetDistrictName(MobileNumber);
            //var getTaluka = objICommon.GetTalukaName(MobileNumber);
            //var getVillage  = objICommon.GetVillageName(MobileNumber);

            return getAddressDetail;
        }



        public List<Shop_CartInfo> GetCartDetails(string MobileNumber)
        {
            var getCartDetails = objICommon.GetCartDetails(MobileNumber);
            return getCartDetails;
        }

        public List<shop_cmp_image>GetCompanyProduct()
        {
            var getCompanyProduct = objICommon.GetCompanyProduct();
            //var tempData = getCompanyProduct.GroupBy(x => x.Prd_company_name).ToList();
            return getCompanyProduct;



        }
        public List<shop_cmp_image> GetCompanyForSlider()
        {
            var GetCompanyForSlider = objICommon.GetCompanyForSlider();
            return GetCompanyForSlider;



        }



        public List<Shop_State_Master> GetAllStatewithProduct()
        {
            try
            {
                ////get user by id.
                var state = objICommon.GetAllStatewithProduct();

                //return entity object as per result.
                return state;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
