using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GrowMandi.Web.Customfilter
{
    public class CustomExceptionFilter : FilterAttribute, IExceptionFilter
    {
        public void OnException(ExceptionContext filterContext)
        {
            string Projectpath = ConfigurationManager.AppSettings["ProjectName"];
            if (!filterContext.ExceptionHandled && filterContext.Exception is NullReferenceException)
            {
                filterContext.Result = new RedirectResult(Projectpath + "/Common/ErrorPage");
                filterContext.ExceptionHandled = true;
            }
            if (!filterContext.ExceptionHandled)
            {
                filterContext.Result = new RedirectResult(Projectpath + "/Common/ErrorPage");
                filterContext.ExceptionHandled = true;
            }
            else
            {
                filterContext.Result = new RedirectResult(Projectpath + "/Common/ErrorPage");
                filterContext.ExceptionHandled = true;

            }
        }
    }
}