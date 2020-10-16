using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Order;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.User
{
    public interface IUserRepository
    {
        bool DeleteAllCartProducts(List<Shop_CartInfo> catlist);
        string GetProductDetail(List<string> productsIds);
        List<Shop_CartInfo> GetAllCartProductDetail(string mobileNumber = "");
        bool AddUser(Shop_Retailer_UserMaster model);
        bool UpdateUser(Shop_Retailer_UserMaster model);
        List<Shop_Order_Details> GetOrderHistory(string mobileNumber = "");
        bool Addcontact(shop_ContactUs model);
        Shop_Order_Details GetOrderDetailByOrderId(int orderiD = 0);
        Task<DataTableResultModel<OrderViewModel>> GetOrderList(
     DTParameterModel criteria, string mobileNumber="");
        bool AddProductOrderDetail(Shop_OrderProductDetails model);
        Shop_Retailer_UserMaster GetUserbyMobileNumber(string mobileNumber);
        bool CheckOtpFromDb(string otp);
        bool CheckUserProfileUpdated(string mobileNumber = "");
        Shop_Retailer_UserMaster GetuserInfo(string mobileNumber = "");
        Shop_Retailer_UserMaster GetUserInfoDetailByMobileNumber(Shop_Retailer_UserMaster model);
        bool AddAddreessForUser(Shop_Shipping_address model);
        bool DeleteCartProduct(long Id = 0);
        List<Shop_CartInfo> GetCartDetailByMobileNumber(string mobileNumber);
        Shop_Order_Details AddOrderDetail(Shop_Order_Details model);
        Shop_Order_Details GetOrderDetailByOrderId(Shop_Order_Details model);
        bool UpdateOrderDetails(Shop_Order_Details model);

        List<Shop_OrderProductDetails> GetOrderProductDetails(Shop_OrderProductDetails model);
        Shop_Shipping_address GetShippingAddress(long shippingId);
        Shop_Retailer_UserMaster GetRetailerDetails(string mobilenumber = "");
        List<string> GetOrderProducts(string orderNumber = "");

    }
}
