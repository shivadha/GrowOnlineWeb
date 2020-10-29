using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Contact;
using GrowIndigo.DAL.DataModels.MandiModels;
using GrowIndigo.DAL.DataModels.Order;
using GrowIndigo.DAL.DataModels.Product;
using GrowIndigo.DAL.DataRepositories.Order;
using GrowIndigo.DAL.DataRepositories.User;
using GrowIndigo.Utilities.EmailFunction;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.BAL.BussinessServices.User
{


    public class UserServices : IUserServices
    {
        #region Dependencies Injection with initialization

        private IUserRepository objIUser = null;
        private IOrderRepository objIOrder = null;


        public UserServices(IUserRepository _objIUser)
        {
            objIUser = _objIUser;

        }
        public UserServices(IOrderRepository _objIOrder)
        {
            objIOrder = _objIOrder;

        }

        #endregion

        public bool AddUser(UserInfoViewModel model)
        {
            try
            {
                {
                    Shop_Retailer_UserMaster userModel = new Shop_Retailer_UserMaster()
                    {
                        mobile_number = model.MobileNumber,
                        state = model.StateId.ToString(),
                        user_code = model.MobileNumber,
                        firm_name = model.FirmName
                    };
                    var result = objIUser.AddUser(userModel);
                    var mobileNumber = userModel.mobile_number;


                    return true;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public bool AddUserOtp(LoginViewModel model)
        {
            try
            {
                string mobileNumber = model.MobileNumber;
                var getUserDetails = objIUser.GetUserbyMobileNumber(mobileNumber);
                if (getUserDetails != null)
                {
                    getUserDetails.user_code = model.MobileNumber;
                    getUserDetails.mobile_number = model.MobileNumber;
                    getUserDetails.EntryDate = model.CreatedDate;
                    getUserDetails.User_pwd = model.OTP;

                    var addOtp = objIUser.UpdateUser(getUserDetails);
                    return addOtp;

                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool CheckOtpFromDb(string otp = "")
        {
            try
            {

                var checkOtp = objIUser.CheckOtpFromDb(otp);
                return checkOtp;



            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public bool CheckUserProfileUpdated(string mobileNumber = "")
        {
            var checkuserProfileUpdate = objIUser.CheckUserProfileUpdated(mobileNumber);
            return checkuserProfileUpdate;
        }

        public List<Shop_CartInfo> GetCartDetailByMobileNumber(string mobileNumber)
        {
            var checkuserProfileUpdate = objIUser.GetCartDetailByMobileNumber(mobileNumber);
            return checkuserProfileUpdate;
        }

        public bool DeleteCartProduct(long Id = 0)
        {
            var deleteCartProduct = objIUser.DeleteCartProduct(Id);
            return deleteCartProduct;
        }



        public Shop_Retailer_UserMaster GetuserInfo(string mobileNumber = "")
        {
            var getUserInfo = objIUser.GetuserInfo(mobileNumber);
            return getUserInfo;
        }

        public bool UpdateUserProfile(UpdateUserViewModel model)
        {
            try
            {
                Shop_Retailer_UserMaster objShop_Retailer_UserMaster = new Shop_Retailer_UserMaster();
                objShop_Retailer_UserMaster.mobile_number = model.mobile_number;
                var getUserDetails = objIUser.GetUserInfoDetailByMobileNumber(objShop_Retailer_UserMaster);
                if (getUserDetails != null)
                {
                    getUserDetails.retailer_name = model.retailer_name;
                    getUserDetails.retailer_last_name = model.retailer_last_name;
                    getUserDetails.email_id = model.email_id;
                    getUserDetails.birth_date = model.birth_date;
                    getUserDetails.address = model.address;
                    getUserDetails.houseNo = model.houseNo;
                    getUserDetails.streetLine1 = model.streetLine1;
                    getUserDetails.streetLine2 = model.streetLine2;
                    getUserDetails.state = model.state;
                    getUserDetails.district = model.district;
                    getUserDetails.taluka = model.taluka;
                    getUserDetails.town = model.town;
                    getUserDetails.pincode = model.pincode;
                    getUserDetails.cstn_number = model.cstn_number;
                    getUserDetails.profileUpdate = 1;
                    getUserDetails.vat_number = model.vat_number;
                    getUserDetails.pan_number = model.pan_number;
                    getUserDetails.license_no = model.license_no;
                    getUserDetails.seed_license_validity = model.seed_license_validity;
                    getUserDetails.imei_number = model.imei_number;
                    getUserDetails.gst_number = model.gst_number;
                    getUserDetails.user_company = model.user_company;
                    getUserDetails.firm_name = model.firm_name;

                    var result = objIUser.UpdateUser(getUserDetails);
                    return true;
                }
                else
                {
                    return false;

                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool AddAddreessForUser(ShippingAddressViewModel objShippingAddressViewModel)
        {
            Shop_Shipping_address objShop_Shipping_address = new Shop_Shipping_address();
            objShop_Shipping_address.reciver_name = objShippingAddressViewModel.reciver_name;
            objShop_Shipping_address.retailer_mobile = objShippingAddressViewModel.retailer_mobile;
            objShop_Shipping_address.email_id = objShippingAddressViewModel.email_id;
            objShop_Shipping_address.StreetLine1 = objShippingAddressViewModel.StreetLine1;
            objShop_Shipping_address.StreetLine2 = objShippingAddressViewModel.StreetLine2;
            objShop_Shipping_address.HouseNumber = objShippingAddressViewModel.HouseNumber;
            objShop_Shipping_address.StateCode = objShippingAddressViewModel.StateId;
            objShop_Shipping_address.DistrictCode = objShippingAddressViewModel.DistrictId;
            objShop_Shipping_address.TalukaCode = objShippingAddressViewModel.TalukaId;
            objShop_Shipping_address.VillageCode = objShippingAddressViewModel.VillageId;
            objShop_Shipping_address.city = objShippingAddressViewModel.city;
            objShop_Shipping_address.pincode = objShippingAddressViewModel.pincode;
            objShop_Shipping_address.retailer_id = "12345";
            objShop_Shipping_address.ship_mobile = objShippingAddressViewModel.ship_mobile;
            objShop_Shipping_address.landline_number = objShippingAddressViewModel.landline_number;
            objShop_Shipping_address.tr_date = DateTime.Now;
            var adddress = objIUser.AddAddreessForUser(objShop_Shipping_address);
            return adddress;


        }

        public string AddOrderDetails(string mobileNumber = "", double totalPrice = 0, string addressId = "")
        {

            try
            {
                Shop_Order_Details objShop_Order_Details = new Shop_Order_Details();


                objShop_Order_Details.retailer_id = mobileNumber;
                objShop_Order_Details.retailer_mobile = mobileNumber;
                objShop_Order_Details.Totalprice = totalPrice.ToString();
                objShop_Order_Details.payment_mode = "Online";
                objShop_Order_Details.orderDate = DateTime.Now;
                objShop_Order_Details.order_status = "Pending";
                objShop_Order_Details.shipping_address_id = addressId;
                var addorder = objIUser.AddOrderDetail(objShop_Order_Details);
                string orderId = addorder.order_id.ToString();
                var getCartDetailForMobileNumber = GetCartDetailByMobileNumber(mobileNumber);
                if (addorder != null)
                {
                    Shop_OrderProductDetails objShop_OrderProductDetails = new Shop_OrderProductDetails();
                    foreach (var product in getCartDetailForMobileNumber)
                    {
                        objShop_OrderProductDetails.order_id = orderId;
                        objShop_OrderProductDetails.qty = product.Quantity.ToString();
                        objShop_OrderProductDetails.price = product.Price;
                        objShop_OrderProductDetails.product_id = product.ProductId.ToString();
                        objShop_OrderProductDetails.tr_date = DateTime.Now;

                        var addProductorder = objIUser.AddProductOrderDetail(objShop_OrderProductDetails);


                    }
                    return orderId;

                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        public bool UpdateOrderDeatils(OrderViewModel model, string type = "")
        {
            EmailFunction objEmailFunction = new EmailFunction();
            EmailViewModel objEmailViewModel = new EmailViewModel();
            if (type == "online")
            {
                //  EmailFunction objEmailFunction = new EmailFunction();
                Shop_Order_Details objShop_Order_Details = new Shop_Order_Details();
                objShop_Order_Details.order_id = model.Order_Id;
                var getOrderIndo = objIUser.GetOrderDetailByOrderId(objShop_Order_Details);
                if (getOrderIndo != null)
                {
                    getOrderIndo.rzp_order_id = model.rzp_order_id;
                    getOrderIndo.rzp_payment_id = model.rzp_payment_id;
                    getOrderIndo.rzp_payment_status = model.rzp_payment_status;
                    getOrderIndo.order_status = model.order_status;
                    getOrderIndo.rzp_payment_status = model.rzp_payment_status;

                    var result = objIUser.UpdateOrderDetails(getOrderIndo);

                    //for Email
                    if (result)
                    {

                        #region to get shipping address
                        //  ToString get shipping address
                        long shippingId =Convert.ToInt64 (getOrderIndo.shipping_address_id);
                        var getShippingAddress = objIUser.GetShippingAddress(shippingId);
                        #endregion

                        #region to get userdetails
                        //to get ratialer detail

                        string mobileNumnber = getOrderIndo.retailer_mobile;
                        var getRetailerDetails = objIUser.GetRetailerDetails(mobileNumnber);
                        #endregion

                        //#region to get product details


                        //string orderId= model.Order_Id.ToString();
                        //var getOrderProducts= objIUser.GetOrderProducts(orderId);
                        //Shop_Product_Master objShop_Product_Master = new Shop_Product_Master();

                        //foreach (var productId in getOrderProducts)
                        //{
                        //    objShop_Product_Master.pkSkuId =Convert.ToInt32( productId.product_id);
                        //}

                        //var getProductDetail = objIUser.GetProductDetail(objShop_Product_Master);

                        //#endregion

                        objEmailViewModel.OrderId = model.Order_Id;

                        objEmailViewModel.FirmName = getRetailerDetails.firm_name;
                        objEmailViewModel.RetailerName = getRetailerDetails.firm_name;

                        //objEmailViewModel.Product = "";

                         objEmailViewModel.ShippingAddress = getShippingAddress.ship_address + " " + getShippingAddress.city + " " + getShippingAddress.pincode;
                        objEmailViewModel.MobileNumber = getOrderIndo.retailer_mobile;
                        objEmailViewModel.Amount = getOrderIndo.Totalprice;
                        objEmailViewModel.PaymentMode = type;
                        objEmailViewModel.OrderDate = getOrderIndo.orderDate;



                        objEmailFunction.SendEmailAfterOrderPlaced(objEmailViewModel, type);
                    }
                    else
                    {

                    }
                    return result;
                }
                else
                {
                    return false;
                }
            }

            else
            {
                Shop_Order_Details objShop_Order_Details = new Shop_Order_Details();
                objShop_Order_Details.order_id = model.Order_Id;
                var getOrderIndo = objIUser.GetOrderDetailByOrderId(objShop_Order_Details);
                if (getOrderIndo != null)
                {
                    if (type == "DAP")
                    {
                        getOrderIndo.payment_mode = "Delivery Against Payment";
                        getOrderIndo.order_status = "Submitted";
                        getOrderIndo.rzp_payment_status = "success";

                    }
                    else
                    {
                        getOrderIndo.payment_mode = "Cash On Delivery";
                        getOrderIndo.order_status = "Submitted";
                        getOrderIndo.rzp_payment_status = "success";
                    }



                    var result = objIUser.UpdateOrderDetails(getOrderIndo);

                    #region to get shipping address
                    //  ToString get shipping address
                    long shippingId = Convert.ToInt64(getOrderIndo.shipping_address_id);
                    var getShippingAddress = objIUser.GetShippingAddress(shippingId);
                    #endregion

                    #region to get userdetails
                    //to get ratialer detail

                    string mobileNumnber = getOrderIndo.retailer_mobile;
                    var getRetailerDetails = objIUser.GetRetailerDetails(mobileNumnber);
                    #endregion

                    #region to get product details


                    string orderId = model.Order_Id.ToString();
                    var productIds = objIUser.GetOrderProducts(orderId);
                  
                 
                    var getProductDetail = objIUser.GetProductDetail(productIds);

                    #endregion

                    objEmailViewModel.OrderId = model.Order_Id;

                    objEmailViewModel.FirmName = getRetailerDetails.firm_name;
                    objEmailViewModel.RetailerName = getRetailerDetails.firm_name;

                    objEmailViewModel.Product = getProductDetail;

                    objEmailViewModel.ShippingAddress = getShippingAddress.ship_address + " " + getShippingAddress.city + " " + getShippingAddress.pincode;
                    objEmailViewModel.MobileNumber = getOrderIndo.retailer_mobile;
                    objEmailViewModel.Amount = getOrderIndo.Totalprice;
                    objEmailViewModel.PaymentMode = type;
                    objEmailViewModel.OrderDate = getOrderIndo.orderDate;



                    objEmailFunction.SendEmailAfterOrderPlaced(objEmailViewModel, type);
                
                    return result;
                }
                else
                {
                    return false;
                }
            }



        }

        public bool DeleteCartProducts(string mobileNumber = "")
        {
            var getAllProductByMobileNumber = objIUser.GetAllCartProductDetail(mobileNumber);
            var deleteCartValues = objIUser.DeleteAllCartProducts(getAllProductByMobileNumber);
            return deleteCartValues;

            //foreach (var deleteCartproduct in getAllProductByMobileNumber)
            //{
            //    objShop_OrderProductDetails.order_id = orderId;
            //    objShop_OrderProductDetails.price = product.Price;
            //    objShop_OrderProductDetails.product_id = product.ProductId.ToString();
            //    objShop_OrderProductDetails.tr_date = DateTime.Now;

            //    var addProductorder = objIUser.AddProductOrderDetail(objShop_OrderProductDetails);


            //}
        }

        public List<Shop_Order_Details> GetOrderHistory(string mobileNumber = "")
        {
            var getOrderDetailsByMobileNumber = objIUser.GetOrderHistory(mobileNumber);
            return getOrderDetailsByMobileNumber;
        }


        public Task<DataTableResultModel<OrderViewModel>> GetOrderList(
        DTParameterModel criteria, string mobileNumber = "")
        {
            return this.objIUser.GetOrderList(criteria, mobileNumber);
        }


        public bool Addcontact(ContactViewModel model)
        {
            shop_ContactUs objshop_ContactUs = new shop_ContactUs();
            objshop_ContactUs.Name = model.Name;
            objshop_ContactUs.Subject = model.Subject;
            objshop_ContactUs.Email = model.Email;
            objshop_ContactUs.Message = model.Message;
            objshop_ContactUs.MobileNumber = model.MobileNumber;
            var result = objIUser.Addcontact(objshop_ContactUs);
            return result;
        }

        public Shop_Order_Details GetOrderDetailByOrderId(int orderId = 0)
        {
            var getOrderDetail = objIUser.GetOrderDetailByOrderId(orderId);
            return getOrderDetail;
        }







        //if (result)
        //{
        //    Shop_OrderProductDetails objShop_OrderProductDetails = new Shop_OrderProductDetails();
        //    objShop_OrderProductDetails.order_id = model.Order_Id.ToString();
        //    var orderProductDetail = objIUser.GetOrderProductDetails(objShop_OrderProductDetails);
        //    foreach (var updateproduct in orderProductDetail)
        //    {
        //        objShop_OrderProductDetails.order_id = orderId;
        //        objShop_OrderProductDetails.price = product.Price;
        //        objShop_OrderProductDetails.product_id = product.ProductId.ToString();
        //        objShop_OrderProductDetails.tr_date = DateTime.Now;

        //        var addProductorder = objIUser.AddProductOrderDetail(objShop_OrderProductDetails);


        //    }

        //}

    }

}








