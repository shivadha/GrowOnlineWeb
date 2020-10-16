using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Contact;
using GrowIndigo.Utilities.Resources;
using GrowIndigo.Utilities.CommonFunction;
using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class HomeController : Controller
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
        /// home page
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            TempData["Product"] = null;
            return View();
        }

        /// <summary>
        /// about us page
        /// </summary>
        /// <returns></returns>
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        /// <summary>
        /// contact us
        /// </summary>
        /// <returns></returns>
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        /// <summary>
        /// contact us 
        /// </summary>
        /// <param name="objContactViewModel"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Contact(ContactViewModel objContactViewModel)
        {
            try
            {
                var addcontactInfo = ObjIUserService.Addcontact(objContactViewModel);
                TempData["ContactUs"] = Resource.GrowOnline_Message_CiontactUs;
                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }
        public ActionResult Test()
        {
            
            return View();
           
        }
    }
}