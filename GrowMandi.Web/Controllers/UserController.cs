using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.MandiModels;
using GrowIndigo.Utilities.CommonFunction;
using GrowIndigo.Utilities.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class UserController : BaseController
    {
        #region Dependencies Injection with initialization


        ResponceModel objResponse = new ResponceModel();
        CommonController objCommonController = new CommonController();
        CommonFunctions objCommonFunctions = new CommonFunctions();

        [Dependency]
        public IUserServices ObjIUserService { get; set; }


        [Dependency]
        public ICommonService ObjICommonServices { get; set; }



        #endregion


        /// <summary>
        /// Index
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Add Address
        /// </summary>
        /// <param name="objShippingAddressViewModel"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AddAddreessForUser(ShippingAddressViewModel objShippingAddressViewModel)
        {
            try
            {
                objShippingAddressViewModel.retailer_mobile = LoggedInUser.MobileNumber;
                var addAddress = ObjIUserService.AddAddreessForUser(objShippingAddressViewModel);
                if (addAddress)
                {
                    TempData["AddressSuccess"] = Resource.GrowOnline_Message_AddAddress;
                    return Json(addAddress, JsonRequestBehavior.AllowGet);
                    //return Json("true", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    TempData["AddressSuccess"] = Resource.GrowOnline_Message_ErrorAddAddress;
                    return Json(addAddress, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }


        //public JsonResult GetDistrict(int id)
        //{
        //    var states = ObjICommonServices.BindStatebyDistrictId(id);

        //    return Json(new SelectList(states, "Value", "Text", JsonRequestBehavior.AllowGet));
        //}


    }
}