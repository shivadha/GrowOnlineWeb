using GrowIndigo.DAL.DataModels.CommonModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GrowMandi.Web.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        public ActionResult Index()
        {
            return View();
        }
        public LoginViewModel LoggedInUser
        {
            get { return Session != null && Session["LoggedInUser"] != null ? (LoginViewModel)Session["LoggedInUser"] : null; }
        }
    }
}