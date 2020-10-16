using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace GrowMandi.Web.Controllers
{
    [OutputCache(NoStore = true, Duration = 0, VaryByParam = "None")]
    public class LanguageMangController : Controller
    {
        // GET: LanguageMang
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// language chnage funtion
        /// </summary>
        /// <param name="lang"></param>
        /// <returns></returns>
        public JsonResult ChangeLanguage(string lang)
        {
            try
            {
                if (lang != null)
                {
                    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang);
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo(lang);

                }
                HttpCookie cookie = new HttpCookie("Language");
                cookie.Value = lang;
                Response.Cookies.Add(cookie);

                // return new EmptyResult(); ;
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}