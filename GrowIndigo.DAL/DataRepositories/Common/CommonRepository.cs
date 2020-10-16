using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.Product;
using GrowIndigo.DAL.DataRepositories.UnitOfWork;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace GrowIndigo.DAL.DataRepositories.Common
{
    public class CommonRepository : ICommonRepository
    {
        #region Dependencies Injection with initialization


        private IUnitOfWork unitOfWork = null;

        public CommonRepository(IUnitOfWork _unitOfWork)
        {
            unitOfWork = _unitOfWork;

        }

        #endregion
        public string CheckMobileNumberExits(string mobileNumber = "")
        {
            var checkMobileNumber = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();
            if (checkMobileNumber != null)
            { return checkMobileNumber.ToString(); }
            else { return null; }

        }

        public bool CheckExistingMobileNumber(string mobileNumber)
        {
            try
            {
                var value = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();
                if (value == null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception source: {0}", ex.Source);

            }
            return false;
        }

        public bool CheckExistingMobileNumberforLogin(string mobileNumber)
        {
            try
            {
                var value = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();
                if (value == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception source: {0}", ex.Source);

            }
            return false;
        }
        public bool CheckOTPForLogin(Shop_Retailer_UserMaster model)
        {
            try
            {
                string MobileNumber = model.mobile_number;
                string otp = model.User_pwd;

                var value = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.User_pwd == otp && x.mobile_number==MobileNumber).FirstOrDefault();
                if (value == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception source: {0}", ex.Source);

            }
            return false;
        }

        public List<Shop_New_District_Master> BindStatebyDistrictId(string disc_Code="")
        {
            try
            {
                ////get statelist by countryid.
                var districtList = unitOfWork.Shop_District_MasterRepository.GetAll().OrderBy(x => x.dist_desc).ToList();
                List<Shop_New_District_Master> getdist = districtList.Where(x => x.dist_code.Contains(disc_Code)).ToList();
                //return entity object as per result.
                return getdist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Shop_New_Taluka_Master> FindTalukaForDistrictCode(string tal_Code = "")
        {
            try
            {
                ////get statelist by countryid.
                var talList = unitOfWork.Shop_Taluka_MasterRepository.GetAll().OrderBy(x => x.talq_code).ToList();
                List<Shop_New_Taluka_Master> getdist = talList.Where(x => x.talq_code.Contains(tal_Code)).ToList();
                //return entity object as per result.
                return getdist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        
 public List<Shop_New_Village_Master> FindVillageForTalukaCode(string vil_Code = "")
        {
            try
            {
                ////get statelist by countryid.
                var vilList = unitOfWork.Shop_Village_MasterRepository.GetAll().OrderBy(x => x.vil_code).ToList();
                List<Shop_New_Village_Master> getvil = vilList.Where(x => x.vil_code.Contains(vil_Code)).ToList();
                //return getvil object as per result.
                return getvil ?? null; 
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool CheckExistingMobileNumberForLogin(string mobileNumber)
        {
            try
            {
                var value = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();
                if (value == null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception source: {0}", ex.Source);

            }
            return false;
        }

        public List<Shop_New_State_Master> BindAllState()
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var Countrylist = unitOfWork.State_MasterRepository.GetAll().ToList();

                //return entity object as per result.
                return Countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<Shop_New_District_Master> BindAllDistrict()
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var Countrylist = unitOfWork.Shop_District_MasterRepository.GetAll().ToList();

                //return entity object as per result.
                return Countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<Shop_New_Taluka_Master> BindAllTaluka()
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var Countrylist = unitOfWork.Shop_Taluka_MasterRepository.GetAll().ToList();

                //return entity object as per result.
                return Countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<Shop_New_Village_Master> BindAllVillage()
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var Countrylist = unitOfWork.Shop_Village_MasterRepository.GetAll().ToList();

                //return entity object as per result.
                return Countrylist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Shop_Shipping_address> GetAddressForUser(string MobileNumber)
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var addresslist = unitOfWork.Shop_Shipping_addressRepository.SearchBy(x => x.retailer_mobile == MobileNumber).ToList();

                //return entity object as per result.
                return addresslist ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Shop_CartInfo> GetCartDetails(string MobileNumber)
        {
            try
            {
                ////get user by orgid with filter parmeter.
                var cartInfo = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.RetailerMobileNumber == MobileNumber).ToList();

                //return entity object as per result.
                return cartInfo ?? null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<shop_cmp_image> GetCompanyProduct()
        {

            //var obj = unitOfWork.Shop_Product_MasterRepository.GetAll().ToList();
            var obj = unitOfWork.Shop_cmp_imageRepository.GetAll().Where(x=>x.stauts=="Active").OrderBy(y=>y.cmpName).ToList();

            return obj;
        }

        public List<shop_cmp_image> GetCompanyForSlider()
        {
            //GrowOnlineDevEntities objGrowOnlineDevEntities = new GrowOnlineDevEntities();
            var obj = unitOfWork.Shop_cmp_imageRepository.GetAll().ToList();

            return obj;
        }


        public List<Shop_State_Master> GetAllStatewithProduct()
        {
            List<Shop_State_Master> stateList = new List<Shop_State_Master>();
            try
            {                ////get state by id.               
                var state = unitOfWork.Shop_State_MasterRepository.GetAll().Where(x => x.Shop_Product_Master.Any()).OrderBy(x => x.state_disc).ToList();
                foreach (var item in state)
                {
                    var publishedDocument = item.Shop_Product_Master.Where(x => x.Status == "Active" && x.isApprove == "Yes").Count();
                    if (publishedDocument > 0)
                    {
                        stateList.Add(item);
                    }
                }
                //return entity object as per result.
                return stateList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}
