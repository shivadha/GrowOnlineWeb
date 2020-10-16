using GrowIndigo.BAL.BussinessServices.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class CommonController : Controller
    {
        #region Dependencies Injection with initialization


        [Dependency]
        public ICommonService ObjICommonServices { get; set; }



        #endregion

        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// to check exixting mobile number in db 
        /// </summary>
        /// <param name="mobileNumber"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult CheckExistingMobileNumber(string mobileNumber = "")
        {
            try
            {
                var result = ObjICommonServices.CheckExistingMobileNumber(mobileNumber);
                if (result)
                {
                    return Json(result, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    ModelState.AddModelError("please ", "try again");
                }



                return Json(JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// Error page
        /// </summary>
        /// <returns></returns>
        public ActionResult ErrorPage()
        {
            return View();
        }
    }
}