using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.Order;
using GrowIndigo.BAL.BussinessServices.Product;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.MandiModels;
using GrowIndigo.Utilities.Resources;
using GrowIndigo.DAL.DataModels.Order;
using GrowIndigo.Utilities.CommonFunction;
using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class OrderController : BaseController
    {
        #region Dependencies Injection with initialization


        ResponceModel objResponse = new ResponceModel();
        CommonController objCommonController = new CommonController();
        CommonFunctions objCommonFunctions = new CommonFunctions();

        [Dependency]
        public IUserServices ObjIUserService { get; set; }


        [Dependency]
        public ICommonService ObjICommonServices { get; set; }

        [Dependency]
        public IProductService ObjIProductService { get; set; }

        [Dependency]
        public IOrderService ObjIOrderService { get; set; }



        #endregion

        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// cart info
        /// </summary>
        /// <returns></returns>
        public ActionResult CartInfo(string productId="")
        {
            try
            {
                string MobileNumber = LoggedInUser.MobileNumber;
                var checkProfileUpdated = ObjIUserService.CheckUserProfileUpdated(MobileNumber);
                if (checkProfileUpdated)
                {
                    var getCartDetailForMobileNumber = ObjIUserService.GetCartDetailByMobileNumber(MobileNumber);
                    double Totalsum = 0;
                    double TotalGst = 0;

                    foreach (var sum in getCartDetailForMobileNumber)
                    {
                        double Totalprice = Convert.ToDouble(sum.Price);

                        Totalsum += Totalprice;
                        //for gst
                        if (sum.ProductGST != "0")
                        {
                            int IntGst = Convert.ToInt32(sum.ProductGST);
                            double GstPer = Convert.ToDouble((Totalprice*IntGst)/100);

                            TotalGst += GstPer;
                        }

                    }

                  
                 
                    ViewBag.TotalPrice = Totalsum;
                    ViewBag.TotalServicePrice = Totalsum + TotalGst;
                    return View(getCartDetailForMobileNumber);
                }
                else
                {
                    TempData["UpdateProfile"] = Resource.GrowOnline_Message_UpdateCartProfile;
                    return RedirectToAction("UpdateUserProfile", "Account", new { type = "cart" });
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        /// <summary>
        /// payment method
        /// </summary>
        /// <param name="addressId"></param>
        /// <returns></returns>
        public ActionResult PaymentMethod(string addressId = "")
        {

            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;

                var getCartDetails = ObjICommonServices.GetCartDetails(mobileNumber);
                double Totalsum = 0;
                foreach (var sum in getCartDetails)
                {
                    double Totalprice = Convert.ToDouble(sum.TotalPrice);

                    Totalsum += Totalprice;

                }
                ViewBag.TotalPrice = Totalsum ;

                double ttlPrice = ViewBag.TotalPrice;
                var AddOrder = ObjIUserService.AddOrderDetails(mobileNumber, ttlPrice, addressId);
                {
                    var getUserDetailByMobile = ObjIUserService.GetuserInfo(mobileNumber);
                    ViewBag.UserName = getUserDetailByMobile.retailer_name == null ? "N/A" : getUserDetailByMobile.retailer_name;
                    ViewBag.Email = getUserDetailByMobile.email_id == null ? "N/A" : getUserDetailByMobile.email_id;
                    ViewBag.MobileNumber = getUserDetailByMobile.mobile_number;
                    ViewBag.TotalPricePartial = Totalsum;
                    ViewBag.TotalPrice = Totalsum + 20;


                    double amount = (ViewBag.TotalPrice) * 100;
                    //int receipt =  AddOrder;
                    //to get razor pay OrderID
                    #region API call to create orderID


                    string orderID = GetRazorPayOrderID(amount);

                    #endregion
                    ViewBag.OrderID = orderID;
                    ViewBag.ServerOrderID = AddOrder;
                    return View();


                }
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        /// <summary>
        /// get razor pay order id
        /// </summary>
        /// <param name="amount"></param>
        /// <returns></returns>
        public string GetRazorPayOrderID(double amount = 0)
        {
            try
            {
                string stringAmount = amount.ToString();
                //string stringReceipt = receipt.ToString();
                Dictionary<string, object> input = new Dictionary<string, object>();
                input.Add("amount", stringAmount); // this amount should be same as transaction amount
                input.Add("currency", "INR");
                input.Add("receipt", "Receipt");
                input.Add("payment_capture", 1);

                string key = "rzp_live_zdMcQe4K4jLkpq";
                string secret = "AznDjQ8cnbwgz3YuaHIVru7M";

                RazorpayClient client = new RazorpayClient(key, secret);

                Razorpay.Api.Order order = client.Order.Create(input);

                var orderId = order["id"].ToString();
                return orderId;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        /// <summary>
        /// checkout form
        /// </summary>
        /// <param name="totalPrice"></param>
        /// <returns></returns>
        public ActionResult CheckOut(string totalPrice = "")
        {
            try
            {
                string mobleNumber = LoggedInUser.MobileNumber;

                string MobileNumber = LoggedInUser.MobileNumber;
                var checkProfileUpdated = ObjIUserService.CheckUserProfileUpdated(MobileNumber);
                if (checkProfileUpdated)
                {
                    return View();
                }
                else
                {
                    TempData["UpdateProfile"] = Resource.GrowOnline_Message_UpdateCartProfile;
                    return RedirectToAction("UpdateUserProfile", "Account", new { type = "cart" });
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// to delete cart
        /// </summary>
        /// <param name="cartId"></param>
        /// <returns></returns>
        public JsonResult DeleteCartProduct(long cartId = 0)
        {
            try
            {
                var deleteCartProduct = ObjIUserService.DeleteCartProduct(cartId);
                if (deleteCartProduct)
                {
                    return Json("true", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("false", JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// to add cart detail for user
        /// </summary>
        /// <param name="productId"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult AddCartDetailForUser(string productId = "", int quantity=0)
        {

            try
            {
               
                var getProductDetailbyId = ObjIProductService.GetProductDetail(productId);

                string mobilenumber = LoggedInUser.MobileNumber;
                if (quantity == 0)
                {
                    quantity = Convert.ToInt32(getProductDetailbyId.min_qty_to_book);
                }
                var checkCartProduct = ObjIProductService.CheckCartProduct(productId,mobilenumber);
                if (checkCartProduct)
                {
                    TempData["SameProductOncart"] = Resource.GrowOnline_Message_ProductAdded;
                    return Json("alreadyexits", JsonRequestBehavior.AllowGet);

                }
                else
                {
                    TempData["Added"] = Resource.GrowOnline_Message_ProducAdded;
                    var addOrderDetails = ObjIProductService.AddOrderDetails(getProductDetailbyId, mobilenumber, quantity);
                    return Json("true", JsonRequestBehavior.AllowGet);

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }



        }

        /// <summary>
        /// payment status
        /// </summary>
        /// <param name="OrderId"></param>
        /// <returns></returns>
        public ActionResult PaymentStatus(int OrderId = 0)
        {
            try
            {
                string ROrderiD = Request.Form["razorpay_order_id"];
                string RPaymentId = Request.Form["razorpay_payment_id"];
                string RSignature = Request.Form["razorpay_signature"];
                string Status = Request.Form["Status"];
                string Status1 = Request.Form["razorpay_status"];
                string Status2 = Request.Form["razorpay_status"];

                //to fetch detail of payment 
                RazorpayClient client = new RazorpayClient("rzp_test_zGV3VGeqasiZZD", "3sQi6joqbhooZwHrzuIvu9qt");
                Payment payment = client.Payment.Fetch(RPaymentId);

                //if(payment.Status)
                OrderViewModel objOrderViewModel = new OrderViewModel();
                objOrderViewModel.Order_Id = OrderId;
                objOrderViewModel.rzp_order_id = ROrderiD;
                objOrderViewModel.rzp_payment_id = RPaymentId;
                objOrderViewModel.rzp_signature = RSignature;
                objOrderViewModel.order_status = "Submitted";
                objOrderViewModel.rzp_payment_status = Status;



                var result = ObjIUserService.UpdateOrderDeatils(objOrderViewModel,"online");

                var getUserdetail = ObjIUserService.GetOrderDetailByOrderId(OrderId);
                if (getUserdetail != null)
                {
                    var deletCart = DeleteCartAfterPayment();

                    ViewBag.TotalPrice = getUserdetail.Totalprice;

                    return View();
                }
                else
                {
                    ViewBag.Status = "Failure";

                    return View();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        /// <summary>
        /// delete cart 
        /// </summary>
        /// <returns></returns>
        public bool DeleteCartAfterPayment()
        {
            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;
                var deleteCartProducts = ObjIUserService.DeleteCartProducts(mobileNumber);
                return deleteCartProducts;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        /// <summary>
        /// order history
        /// </summary>
        /// <returns></returns>
        public ActionResult OrderHistory()
        {
            try
            {
                string mobileNumber = LoggedInUser.MobileNumber;
                //var getOrderDetails = ObjIUserService.GetOrderHistory(mobileNumber);
                //return View(getOrderDetails);
                return View();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            //return View();
        }

        /// <summary>
        /// to get order list
        /// </summary>
        /// <param name="criteria"></param>
        /// <returns></returns>
        [AcceptVerbs(new string[] { "GET", "POST" })]
        [HttpPost]
        public async Task<JsonResult> GetOrderList(DTParameterModel criteria, string mobileNumber = "")
        {
            try
            {
                string mobileNum = LoggedInUser.MobileNumber;
                var list = ObjIUserService.GetOrderList(criteria, mobileNum);

                return Json(new { list.Result.sEcho, recordsFiltered = list.Result.recordsTotal, list.Result.recordsTotal, list.Result.data });

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public JsonResult UpdateOrderDetails(int orderId =0, string type="")
        {
            OrderViewModel objOrderViewModel = new OrderViewModel();
            objOrderViewModel.Order_Id = orderId;
           var update= ObjIUserService.UpdateOrderDeatils(objOrderViewModel, type);
            if (update == true)
            {
                DeleteCartAfterPayment();
                return Json(update, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(update, JsonRequestBehavior.AllowGet);
            }
           
        }

    }
}