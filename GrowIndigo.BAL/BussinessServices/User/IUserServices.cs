using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Contact;
using GrowIndigo.DAL.DataModels.MandiModels;
using GrowIndigo.DAL.DataModels.Order;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.BAL.BussinessServices.User
{

    
    public interface IUserServices
    {

        Shop_Order_Details GetOrderDetailByOrderId(int orderId = 0);
        bool UpdateOrderDeatils(OrderViewModel model,string type );
        bool Addcontact(ContactViewModel model);
        bool AddUser(UserInfoViewModel model);
        bool AddUserOtp(LoginViewModel model);
        List<Shop_CartInfo> GetCartDetailByMobileNumber(string mobileNumber);
        bool CheckOtpFromDb(string Otp);
        bool CheckUserProfileUpdated(string mobileNumber = "");
        Shop_Retailer_UserMaster GetuserInfo(string mobileNumber = "");
        bool UpdateUserProfile(UpdateUserViewModel model);
        bool AddAddreessForUser(ShippingAddressViewModel objShippingAddressViewModel);
        bool DeleteCartProduct(long Id = 0);
        Task<DataTableResultModel<OrderViewModel>> GetOrderList(DTParameterModel criteria,string mobileNumber="");
        string AddOrderDetails(string mobileNumber = "", double totalPrice =0,string addressId="");
        bool DeleteCartProducts(string mobileNumber = "");
        List<Shop_Order_Details> GetOrderHistory(string mobileNumber = "");
    }
}
