using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.Utilities.EmailFunction
{
   public  class EmailViewModel
    {

        public int OrderId { get; set; }
        public string FirmName { get; set; }
        public string RetailerName { get; set; }
        public string ShippingAddress { get; set; }
        public string MobileNumber { get; set; }
        public string Product { get; set; }
        public string Amount { get; set; }
  
        public string PaymentMode { get; set; }
      
        public Nullable<System.DateTime> OrderDate { get; set; }



    }
}
