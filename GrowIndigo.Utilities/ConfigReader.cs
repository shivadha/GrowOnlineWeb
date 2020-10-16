
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.Utilities
{
    public static class ConfigReader
    {
        public static string ProjectName
        {
            get
            {
                return System.Configuration.ConfigurationManager.AppSettings["ProjectName"];
            }
        }

        public static string ServerProductImage
        {
            get
            {
                return System.Configuration.ConfigurationManager.AppSettings["ServerProductImage"];
            }
        }


        public static string ServerSubProductImage
        {
            get
            {
                return System.Configuration.ConfigurationManager.AppSettings["ServerSubProductImage"];
            }
        }

    }
}
