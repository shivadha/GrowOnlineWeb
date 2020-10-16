using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.MandiModels
{
    public class CartInfoViewModel
    {
        public long Id { get; set; }
        public string RetailerMobileNumber { get; set; }
        public string Price { get; set; }
        public string ShippingCharge { get; set; }
        public string TotalPrice { get; set; }
        public string ProductName { get; set; }
        public string ProductImageUrl { get; set; }
        public string ProductDescription { get; set; }
        public string ProductGST { get; set; }

    }
}
