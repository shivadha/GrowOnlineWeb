using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.Order
{
   public  class OrderViewModel
    {

        public int Order_Id { get; set; }
        public string retailer_id { get; set; }
        public string retailer_mobile { get; set; }
        public string Totalprice { get; set; }
        public string payment_mode { get; set; }
        public string order_status { get; set; }
        public string orderDate { get; set; }
        public string SAP_order_ID { get; set; }
        public string geoCoordinates { get; set; }
        public string rzp_order_id { get; set; }
        public string rzp_payment_id { get; set; }
        public string rzp_signature { get; set; }
        public string rzp_payment_status { get; set; }
        public Nullable<System.DateTime> inprocessDate { get; set; }
        public Nullable<System.DateTime> dispatchDate { get; set; }
        public Nullable<System.DateTime> completeDate { get; set; }
        public string inprocessComment { get; set; }
        public string inprocessBy { get; set; }
        public string dispatchComment { get; set; }
        public string dispatchBy { get; set; }
        public string CompleteComment { get; set; }
        public string CompleteBy { get; set; }
        public string walletCurrentBalance { get; set; }
        public string amountToPayOnline { get; set; }
    }
}
