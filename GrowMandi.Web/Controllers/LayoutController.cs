using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.Product;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataEntities;
using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class LayoutController : BaseController
    {
        #region Dependencies

        [Dependency]
        public ICommonService ObjICommonServices { get; set; }

        [Dependency]
        public IUserServices ObjIUserService { get; set; }

        [Dependency]
        public IProductService ObjIProductService { get; set; }

        #endregion

        /// <summary>
        /// register view
        /// </summary>
        /// <returns></returns>
        public ActionResult RegisterView()
        {
            try
            {
                {
                    TempData["ReturnAction"] = null;
                    var getallState = ObjICommonServices.BindAllState();
                    ViewBag.state = getallState;
                }
                return PartialView("~/Views/Account/UserRegistration.cshtml");
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// login view
        /// </summary>
        /// <returns></returns>
        public ActionResult LoginView()
        {
            try
            {

                ViewBag.ReturnUrl1 = Request.UrlReferrer;
                TempData["ReturnAction"] = null;
                return PartialView("~/Views/Account/LoginView.cshtml");
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// terms of use
        /// </summary>
        /// <param name="termType"></param>
        /// <param name="Role"></param>
        /// <returns></returns>
        public ActionResult Terms(string termType, string Role = "")
        {
            return PartialView("~/Views/Account/TermofUse.cshtml");
        }

        /// <summary>
        /// privacy policy
        /// </summary>
        /// <param name="termType"></param>
        /// <param name="Role"></param>
        /// <returns></returns>
        public ActionResult PrivacyPolicy(string termType, string Role = "")
        {
            return PartialView("~/Views/Account/PrivacyPolicy.cshtml");
        }

        /// <summary>
        /// to get address
        /// </summary>
        /// <param name="MobileNumber"></param>
        /// <returns></returns>
        public ActionResult GetAddressForUser(string MobileNumber = "")
        {
            try
            {
                var getAddress = ObjICommonServices.GetAddressForUser(MobileNumber);
                return PartialView("~/Views/User/GetAddressForUser.cshtml", getAddress);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// to add new address partial
        /// </summary>
        /// <returns></returns>
        public ActionResult AddNewAddressForUser()
        {
            try
            {
                //    ViewBag.state = ObjICommonServices.BindAllState().OrderBy(x => x.Text);
                //ViewBag.district = ObjICommonServices.BindAllDistrict().OrderBy(x => x.Text);

                //    ViewBag.taluka = ObjICommonServices.BindAllTaluka().OrderBy(x => x.Text);
                //    ViewBag.village = ObjICommonServices.BindAllVillage().OrderBy(x => x.Text);

                List<SelectListItem> listDistrict = new List<SelectListItem>();
                List<SelectListItem> listTaluka = new List<SelectListItem>();
                List<SelectListItem> listVillage = new List<SelectListItem>();

                ViewBag.state = ObjICommonServices.BindAllState().OrderBy(x => x.Text);
                ViewBag.district = listDistrict;

                ViewBag.taluka = listTaluka;
                ViewBag.village = listVillage;

                return PartialView("~/Views/User/AddNewAddressForUser.cshtml");
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// to get cart details
        /// </summary>
        /// <returns></returns>
        public ActionResult GetCartDetails()
        {

            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;
                var getCartDetails = ObjICommonServices.GetCartDetails(mobileNumber);
                double Totalsum = 0;
                foreach (var sum in getCartDetails)
                {
                    double Totalprice = Convert.ToDouble(sum.TotalPrice);

                    Totalsum += Totalprice;

                }

                var getUserDetailByMobile = ObjIUserService.GetuserInfo(mobileNumber);
                //ViewBag.UserName = getUserDetailByMobile.retailer_name==null?"N/A": getUserDetailByMobile.retailer_name;
                //ViewBag.Email = getUserDetailByMobile.email_id==null?"N/A": getUserDetailByMobile.email_id;
                //ViewBag.MobileNumber = getUserDetailByMobile.mobile_number;
                ViewBag.TotalPricePartial = Totalsum;
                ViewBag.TotalPrice = Totalsum + 20;
                //LoggedInUser.AmountToBePaid = ViewBag.TotalPrice;

                return PartialView("~/Views/User/GetCartDetailsForUser.cshtml", getCartDetails);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }



        /// <summary>
        /// to get product in cart info
        /// </summary>
        /// <returns></returns>
        public ActionResult ProductInCartInfo()
        {
            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;
                var getCartDetails = ObjICommonServices.GetCartDetails(mobileNumber);
                double Totalsum = 0;
                foreach (var sum in getCartDetails)
                {
                    double Totalprice = Convert.ToDouble(sum.TotalPrice);

                    Totalsum += Totalprice;

                }
                ViewBag.TotalPricePartial = Totalsum;
                return PartialView("~/Views/Order/ProductInCartInfo.cshtml", getCartDetails);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public ActionResult GetCompanyProduct()
        {
            var getCompanyProduct = ObjICommonServices.GetCompanyProduct();
            return PartialView("~/Views/ProductMaster/CompanyBasedProduct.cshtml", getCompanyProduct);
        }

        public ActionResult ManufactureDetails()
        {
            var getManuDetails = ObjICommonServices.GetCompanyProduct();
            return PartialView("~/Views/ProductMaster/ManufactureDetails.cshtml", getManuDetails);
        }

        public ActionResult SearchBox()
        {
            return PartialView("~/Views/ProductMaster/SearchProduct.cshtml");
        }

        public ActionResult GetStateList()
        {
            // ViewBag.state = ObjICommonServices.BindAllStateForProduct();

            List<Shop_State_Master> stateList = new List<Shop_State_Master> { new Shop_State_Master { state_code = 0, state_disc = "Please select state." } };
            stateList.AddRange(ObjICommonServices.GetAllStatewithProduct());

            ViewBag.AllStates = new SelectList(stateList, "state_code", "state_disc");


            return PartialView("~/Views/Home/GetStateList.cshtml");
        }


        public ActionResult GetCompanyForSlider()
        {
            var getcompanyDetails = ObjICommonServices.GetCompanyForSlider();
            return PartialView("~/Views/ProductMaster/GetCompanyForSlider.cshtml", getcompanyDetails);
        }

        public JsonResult BindStatebyDistrictId(string dist_code)
        {
            var getdistrict = ObjICommonServices.BindStatebyDistrictId(dist_code).Distinct();
            return Json(getdistrict, JsonRequestBehavior.AllowGet);
        }
        public JsonResult FindTalukaForDistrictCode(string tal_code)
        {

            var getTaluka = ObjICommonServices.FindTalukaForDistrictCode(tal_code).Distinct().ToList();
            return Json(getTaluka, JsonRequestBehavior.AllowGet);
        }

        public JsonResult FindVillageForTalukaCode(string vil_code)
        {

            var getVillage = ObjICommonServices.FindVillageForTalukaCode(vil_code).Distinct().ToList(); ;
            return Json(getVillage, JsonRequestBehavior.AllowGet);
        }

    }
}