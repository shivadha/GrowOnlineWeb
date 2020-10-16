using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.MandiModels;
using GrowIndigo.Utilities.CommonFunction;
using GrowIndigo.Utilities.Resources;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class AccountController : BaseController
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

        public ActionResult Index()
        {

            return View();
        }

        #region  Account (Registration and Login)


        /// <summary>
        /// User Registration
        /// </summary>
        /// <param name="objMandiUserInfoViewModel"></param>
        /// <returns></returns>
        [HttpPost]
        [AllowAnonymous]
        public ActionResult UserRegistration(UserInfoViewModel objMandiUserInfoViewModel)
        {
            try
            {
                string mobileNumber = objMandiUserInfoViewModel.MobileNumber;
                var getmobileNumber = ObjICommonServices.CheckMobileNumberExits(mobileNumber);
                if (objMandiUserInfoViewModel != null)
                {
                    var result = ObjIUserService.AddUser(objMandiUserInfoViewModel);
                    if (result)
                    {
                        TempData["RegisterSuccess"] = Resource.GrowOnline_Message_RegistrationSuccess;
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        TempData["RegisterFailed"] = Resource.GrowOnline_Message_LoginFailed;
                        return RedirectToAction("Index", "Home");
                    }


                }
                else
                {
                    return RedirectToAction("Index", "Home");
                }
            }



            catch (Exception ex)
            {
                throw ex;
                //Log.Info(Convert.ToString(ex.InnerException));
                //Log.Info(ex.Message);
                //objCommonClasses.InsertExceptionDetails(ex, "MandiUserController", "MandiUserRegistration");
                //return Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message);
            }

        }

        /// <summary>
        /// Login View Part 1
        /// </summary>
        /// <param name="objLoginViewModel"></param>
        /// <returns></returns>
        [HttpPost]
        [AllowAnonymous]
        public JsonResult UserLoginVerifyMobileNumber(LoginViewModel objLoginViewModel)
        {
            try
            {
                string mobileNumber = objLoginViewModel.MobileNumber;
                if (mobileNumber != null)
                {
                    var otpNumber = objCommonFunctions.GenerateOTP();
                    if (objCommonFunctions.SendOTP(otpNumber, mobileNumber))
                    {
                        //For inserting a new mobile number into shop_UserMaster table
                        objLoginViewModel.MobileNumber = mobileNumber;
                        objLoginViewModel.OTP = otpNumber;
                        objLoginViewModel.CreatedDate = DateTime.Now;
                        var addOtp = ObjIUserService.AddUserOtp(objLoginViewModel);
                        if (addOtp)
                        {
                            TempData["LoginSuccess"] = Resource.GrowOnline_Message_RegistrationSuccess;
                            return Json(addOtp, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            TempData["LoginFail"] = Resource.GrowOnline_Message_RegistrationSuccess;
                            return Json(addOtp, JsonRequestBehavior.AllowGet);
                        }


                    }
                    else
                    {
                        return Json("false", JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    TempData["LoginFail"] = Resource.GrowOnline_Message_RegistrationSuccess;
                    return Json("false", JsonRequestBehavior.AllowGet);
                }
            }


            catch (Exception ex)
            {
                throw ex;
                //Log.Info(Convert.ToString(ex.InnerException));
                //Log.Info(ex.Message);
                //objCommonClasses.InsertExceptionDetails(ex, "MandiUserController", "MandiUserRegistration");
                //return Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message);
            }

        }


        /// <summary>
        /// Login View Part 2
        /// </summary>
        /// <param name="model"></param>
        /// <param name="ReturnUrl"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult CheckOTPForLogin(LoginViewModel model, string ReturnUrl)
        {


            var user = ObjICommonServices.CheckOTPForLogin(model);
            if (user != null)
            {
                Session["LoggedInUser"] = user;
                var temp = TempData["Product"];
                if (temp != null)
                {
                    if (temp.ToString() == "ProductDetail")
                    {
                        return Json("productPage", JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        return Json("true", JsonRequestBehavior.AllowGet);
                    }
                }
                else

                {
                    if (model.ReturnUrl != null)
                    {
                        return Json("ReturnUrl", JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        return Json("true", JsonRequestBehavior.AllowGet);
                    }
              
                }

            }
            else
            {
                // ModelState.AddModelError("please ", "try again");
                if (TempData["ReturnAction"] != null)
                {
                    return Json("productPage", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("false", JsonRequestBehavior.AllowGet);
                }

            }

        }
        //[HttpPost]
        //[AllowAnonymous]
        //public JsonResult RemoteCheckOtpForLogin(string OTP="")
        //{
        //    try
        //    {
        //        if (OTP != null)
        //        {

        //            var checkOtpFromDb = ObjIUserService.CheckOtpFromDb(OTP);

        //            if (checkOtpFromDb)
        //            {
        //                TempData["LoginSuccess"] = Resource.GrowOnline_Message_RegistrationSuccess;
        //                return Json("true", JsonRequestBehavior.AllowGet);
        //            }
        //            else
        //            {
        //                TempData["LoginFail"] = Resource.GrowOnline_Message_RegistrationSuccess;
        //                return Json("false", JsonRequestBehavior.AllowGet);
        //            }




        //        }
        //        else
        //        {
        //            TempData["LoginFail"] = Resource.GrowOnline_Message_RegistrationSuccess;
        //            return Json("false", JsonRequestBehavior.AllowGet);
        //        }
        //    }


        //    catch (Exception ex)
        //    {
        //        throw ex;
        //        //Log.Info(Convert.ToString(ex.InnerException));
        //        //Log.Info(ex.Message);
        //        //objCommonClasses.InsertExceptionDetails(ex, "MandiUserController", "MandiUserRegistration");
        //        //return Request.CreateErrorResponse(HttpStatusCode.ExpectationFailed, ex.Message);
        //    }

        //}

        /// <summary>
        /// to check Mobile number
        /// </summary>
        /// <param name="MobileNumber"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult CheckMobileNumber(string MobileNumber = "")
        {

            var result = ObjICommonServices.CheckExistingMobileNumber(MobileNumber);
            if (result)
            {
                //ModelState.AddModelError("please ", "try again");
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ModelState.AddModelError("please ", "try again");
            }
            return Json(JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// to check mobile number
        /// </summary>
        /// <param name="MobileNumber"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult CheckMobileNumberForLogin(string MobileNumber = "")
        {

            var result = ObjICommonServices.CheckExistingMobileNumber(MobileNumber);
            if (result)
            {
                //ModelState.AddModelError("please ", "try again");
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ModelState.AddModelError("please ", "try again");
            }
            return Json(JsonRequestBehavior.AllowGet);
        }


        #endregion


        /// <summary>
        /// Logout Method
        /// </summary>
        /// <returns></returns>
        public ActionResult LogOut()
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            FormsAuthentication.SignOut();
            if (LoggedInUser == null)
            {
                //return Json(Url.Action("Index", "Home", JsonRequestBehavior.AllowGet));
                return RedirectToAction("Index", "Home");


            }
            else
            {
                return RedirectToAction("Index", "Home");
            }

        }

        /// <summary>
        /// Update profile method
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public ActionResult UpdateUserProfile(string type = "")
        {
            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;
                var getuserInfo = ObjIUserService.GetuserInfo(mobileNumber);
                UpdateUserViewModel objUserInfoViewModel = new UpdateUserViewModel
                {
                    retailer_name = getuserInfo.retailer_name,
                    mobile_number = getuserInfo.mobile_number,
                    email_id = getuserInfo.email_id,
                    address = getuserInfo.address,
                    state = getuserInfo.state,
                    district = getuserInfo.district,
                    taluka = getuserInfo.taluka,
                    cstn_number = getuserInfo.cstn_number,
                    vat_number = getuserInfo.vat_number,
                    pan_number = getuserInfo.pan_number,
                    license_no = getuserInfo.license_no,
                    imei_number = getuserInfo.imei_number,
                    EntryDate = getuserInfo.EntryDate,
                    pincode = getuserInfo.pincode,
                    seed_license_validity = getuserInfo.seed_license_validity,
                    gst_number = getuserInfo.gst_number,
                    firm_name = getuserInfo.firm_name,
                    depo = getuserInfo.depo,
                    Flag = getuserInfo.Flag,
                    town = getuserInfo.town,
                    sap_retailer_id = getuserInfo.sap_retailer_id,
                    fcm_token = getuserInfo.fcm_token,
                    fcm_subscription_topic = getuserInfo.fcm_subscription_topic,
                    bank_account_number = getuserInfo.bank_account_number,
                    birth_date = getuserInfo.birth_date,
                    retailer_last_name = getuserInfo.retailer_last_name,
                    houseNo = getuserInfo.houseNo,
                    streetLine1 = getuserInfo.streetLine1,
                    streetLine2 = getuserInfo.streetLine2,
                    //profileUpdate = Convert.ToBoolean(getuserInfo.profileUpdate),
                    user_company = getuserInfo.user_company


                };
                return View(objUserInfoViewModel);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// Update Profiule method
        /// </summary>
        /// <param name="objUpdateUserViewModel"></param>
        /// <param name="Type"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult UpdateUserProfile(UpdateUserViewModel objUpdateUserViewModel, string Type="")
        {
            try
            {

                if (objUpdateUserViewModel != null)
                {
                    var mobileNumber = LoggedInUser.MobileNumber;
                    objUpdateUserViewModel.mobile_number = mobileNumber;
                    ResultModel objResultStatus = new ResultModel();
                    var objUpdateUser = ObjIUserService.UpdateUserProfile(objUpdateUserViewModel);
                    if (objUpdateUser == true)
                    {


                        objResultStatus.Message = Resource.GrowOnline_Message_UserProfileUpdate;

                    }
                    else
                    {

                        objResultStatus.Message = Resource.GrowOnline_Message_ErrorUserProfileUpdate;
                    }
                    TempData["ProfileMessage"] = objResultStatus.Message;
                    if (Type == "cart")
                    {
                        return RedirectToAction("CartInfo", "Order", new { id = objUpdateUser });
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home", new { id = objUpdateUser });
                    }



                }
                else
                {
                    TempData["ErroUpdate"] = Resource.GrowOnline_Message_ErrorUserProfileUpdate;
                    return RedirectToAction("Index", "Home");
                }



            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

    }


}
