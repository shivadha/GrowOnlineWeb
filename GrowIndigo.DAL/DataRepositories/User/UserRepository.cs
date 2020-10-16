using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataModels.Order;
using GrowIndigo.DAL.DataRepositories.UnitOfWork;
using LinqKit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;


namespace GrowIndigo.DAL.DataRepositories.User
{
    public class UserRepository : IUserRepository
    {
        // Entities objEntities = new Entities();

        #region Dependencies Injection with initialization


        private IUnitOfWork unitOfWork = null;

        public UserRepository(IUnitOfWork _unitOfWork)
        {
            unitOfWork = _unitOfWork;

        }


        #endregion

        public bool AddUser(Shop_Retailer_UserMaster model)
        {
            try
            {

                unitOfWork.Shop_Retailer_UserMasterRepository.Insert(model);

                unitOfWork.SaveChanges();
                return true;

            }
            catch (Exception ex)
            {
                throw ex;

            }

        }
        public bool UpdateUser(Shop_Retailer_UserMaster model)
        {
            try
            {

                unitOfWork.Shop_Retailer_UserMasterRepository.Update(model);
                unitOfWork.SaveChanges();
                return true;

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public Shop_Retailer_UserMaster GetUserbyMobileNumber(string mobileNumber)
        {
            try
            {

                var user = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();

                //return entity object as per result.
                return user != null ? user : null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public Shop_Retailer_UserMaster GetuserInfo(string mobileNumber = "")
        {
            var getUserInfo = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber).FirstOrDefault();
            return getUserInfo;
        }
        public bool CheckOtpFromDb(string otp)
        {

            var checkotp = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.User_pwd == otp).FirstOrDefault();
            if (checkotp != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool CheckUserProfileUpdated(string mobileNumber = "")
        {
            var checkuserProfileupdated = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobileNumber && x.profileUpdate == 1).FirstOrDefault();
            if (checkuserProfileupdated != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public Shop_Retailer_UserMaster GetUserInfoDetailByMobileNumber(Shop_Retailer_UserMaster model)
        {
            var getUserInfo = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == model.mobile_number).FirstOrDefault();
            return getUserInfo;
        }

        public bool AddAddreessForUser(Shop_Shipping_address model)
        {
            try
            {

                unitOfWork.Shop_Shipping_addressRepository.Insert(model);

                unitOfWork.SaveChanges();
                return true;

            }
            catch (Exception ex)
            {
                throw ex;

            }
        }
        public bool DeleteCartProduct(long Id = 0)
        {
            var getCartDetails = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.Id == Id).FirstOrDefault();
            if (getCartDetails != null)
            {
                unitOfWork.Shop_CartInfoRepository.Delete(getCartDetails);
                unitOfWork.Shop_CartInfoRepository.Commit();
                return true;
            }
            else
            {
                return false;
            }

        }
        public List<Shop_CartInfo> GetCartDetailByMobileNumber(string mobileNumber)
        {

            var getCartDetails = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.RetailerMobileNumber == mobileNumber).ToList();
            var list1 = getCartDetails.Distinct();
            return getCartDetails.ToList();
        }
        public Shop_Order_Details AddOrderDetail(Shop_Order_Details model)
        {
            try
            {
                unitOfWork.Shop_Order_DetailsRepository.Insert(model);

                unitOfWork.SaveChanges();
                return model;
            }
            catch (Exception ex)
            {
                return null;
                throw;
            }

        }

        public bool AddProductOrderDetail(Shop_OrderProductDetails model)
        {
            try
            {
                unitOfWork.Shop_OrderProductDetailsRepository.Insert(model);

                unitOfWork.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw;
            }

        }
        public Shop_Order_Details GetOrderDetailByOrderId(Shop_Order_Details model)
        {
            int orderid = model.order_id;
            var GetOrderDetails = unitOfWork.Shop_Order_DetailsRepository.SearchBy(x => x.order_id == orderid).FirstOrDefault();
            return GetOrderDetails;
        }

        public bool UpdateOrderDetails(Shop_Order_Details model)
        {
            try
            {
                unitOfWork.Shop_Order_DetailsRepository.Update(model);

                unitOfWork.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public Shop_Shipping_address GetShippingAddress(long shippingId = 0)
        {
            var getShippingDetails = unitOfWork.Shop_Shipping_addressRepository.SearchBy(x => x.tr_id == shippingId).FirstOrDefault();
            return getShippingDetails;
        }

        public Shop_Retailer_UserMaster GetRetailerDetails(string mobilenumber = "")
        {
            var getRetailerDetails = unitOfWork.Shop_Retailer_UserMasterRepository.SearchBy(x => x.mobile_number == mobilenumber).FirstOrDefault();
            return getRetailerDetails;
        }

        public List<string> GetOrderProducts(string orderNumber = "")
        {
            var getOrderProducts = unitOfWork.Shop_OrderProductDetailsRepository.SearchBy(x => x.order_id == orderNumber).Select(z=>z.product_id).ToList();
           
            return getOrderProducts;
        }

        public string GetProductDetail(List <string> productsIds)
        {

            //dataSource.StateList.Where(s => countryCodes.Contains(s.CountryCode))
            var getOrderProducts = unitOfWork.Shop_Product_MasterRepository
                .SearchBy(s => productsIds.Contains(s.pkSkuId.ToString())).Select(z => z.SkuName).ToList();

            string productName = String.Join(",", getOrderProducts);


            return productName;


            //List<int> intList = stringList.ConvertAll(int.Parse);
            //List<string> getOrderProducts;
            //string productName = "";
            //foreach (var proName in productsIds)
            //{
            //     getOrderProducts = unitOfWork.Shop_Product_MasterRepository.SearchBy(x => x.pkSkuId == Convert.ToInt32(productsIds)).Select(z => z.SkuName).ToList();
            //    foreach (var add in getOrderProducts)
            //    {
            //         productName = add + ",";
            //    }
            //}



        }

        public List<Shop_OrderProductDetails> GetOrderProductDetails(Shop_OrderProductDetails model)
        {
            string orderid = model.order_id;
            var GetOrderDetails = unitOfWork.Shop_OrderProductDetailsRepository.SearchBy(x => x.order_id == orderid).ToList();
            return GetOrderDetails;
        }

        public List<Shop_CartInfo> GetAllCartProductDetail(string mobileNumber = "")
        {

            var GetOrderDetails = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.RetailerMobileNumber == mobileNumber).ToList();
            return GetOrderDetails;
        }
        public bool DeleteAllCartProducts(List<Shop_CartInfo> catlist)
        {
            try
            {
                if (catlist != null)
                {
                    //delete record from existing entity in database.
                    unitOfWork.Shop_CartInfoRepository.Delete(catlist);

                    ////save changes in database.
                    unitOfWork.Shop_CartInfoRepository.Commit();

                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Shop_Order_Details> GetOrderHistory(string mobileNumber = "")
        {
            var getallorders = unitOfWork.Shop_Order_DetailsRepository.SearchBy(x => x.retailer_mobile == mobileNumber).ToList();
            return getallorders;
        }
        public bool Addcontact(shop_ContactUs model)
        {
            unitOfWork.Shop_ContactUsRepository.Insert(model);
            return true;

        }

        public Shop_Order_Details GetOrderDetailByOrderId(int orderiD = 0)
        {
            var result = unitOfWork.Shop_Order_DetailsRepository.SearchBy(x => x.order_id == orderiD).FirstOrDefault();
            return result;
        }

        public async Task<DataTableResultModel<OrderViewModel>> GetOrderList(DTParameterModel criteria, string mobileNumber = "")
        {
            try
            {
                DataTableResultModel<OrderViewModel> orderlist = new DataTableResultModel<OrderViewModel>();
                int totalCount = 0;
                List<OrderViewModel> list = (this.unitOfWork.Shop_Order_DetailsRepository.GetAllList(out totalCount, this.OrderBuildWhereFilter(criteria), this.OrderBuildOrderByFilter(criteria), true, criteria.Start != 0 ? criteria.Start / criteria.Length : 0, criteria.Length, "")).Where(x => x.retailer_mobile == mobileNumber).Select<Shop_Order_Details, OrderViewModel>((Func<Shop_Order_Details, OrderViewModel>)(x =>
                   {
                       OrderViewModel orderViewModel = new OrderViewModel();
                       orderViewModel.Order_Id = x.order_id == 0 ? 0 : x.order_id;
                       orderViewModel.retailer_mobile = x.retailer_mobile;
                       orderViewModel.Totalprice = x.Totalprice;
                       orderViewModel.payment_mode = x.payment_mode;
                       orderViewModel.order_status = x.order_status;
                       orderViewModel.orderDate = x.orderDate.ToString();
                       //orderViewModel.IsActive = Convert.ToBoolean(x.IsActive);
                       //orderViewModel.ResourceKey = Resource.LegalResource_Common_Edit + " " + Resource.LegalResource_Common_State;

                       return orderViewModel;
                   })).ToList<OrderViewModel>();
                orderlist.recordsTotal = totalCount;
                orderlist.recordsFiltered = totalCount;
                orderlist.sEcho = Convert.ToInt32(criteria.Draw);
                orderlist.data = list;
                return orderlist;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// search filter for state
        /// </summary>
        /// <param name="criteria"></param>
        /// <returns></returns>
        private Expression<Func<Shop_Order_Details, bool>> OrderBuildWhereFilter(
             DTParameterModel criteria)
        {
            Expression<Func<Shop_Order_Details, bool>> expression = PredicateBuilder.New<Shop_Order_Details>(true);
            if (criteria.Search.Value != null)
                expression = expression.And<Shop_Order_Details>((Expression<Func<Shop_Order_Details, bool>>)(p => p.orderDate.ToString().Contains(criteria.Search.Value) || p.payment_mode.Contains(criteria.Search.Value) || p.order_status.Contains(criteria.Search.Value)));
            return expression.Expand<Func<Shop_Order_Details, bool>>();
        }

        /// <summary>
        /// sort filter for state
        /// </summary>
        /// <param name="criteria"></param>
        /// <returns></returns>
        private Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>> OrderBuildOrderByFilter(
          DTParameterModel criteria)
        {
            Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>> func = (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)null;
            if (criteria.Order != null && criteria.Order.Count<DTOrder>() > 0)
            {
                string dir = criteria.Order.FirstOrDefault<DTOrder>().Dir;
                int column = criteria.Order.FirstOrDefault<DTOrder>().Column;
                DTColumn dtColumn = criteria.Columns.ToList<DTColumn>().ElementAt<DTColumn>(column);
                if (dtColumn.Name == "Order_id")
                    func = !dir.Equals("asc") ? (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderByDescending<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.order_id.ToString()))) : (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderBy<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.order_id.ToString())));
                if (dtColumn.Name == "Totalprice")
                    func = !dir.Equals("asc") ? (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderByDescending<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.Totalprice))) : (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderBy<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.Totalprice)));
                if (dtColumn.Name == "payment_mode")
                    func = !dir.Equals("asc") ? (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderByDescending<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.payment_mode))) : (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderBy<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.payment_mode)));

                if (dtColumn.Name == "Status")
                    func = !dir.Equals("asc") ? (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderByDescending<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.order_status))) : (Func<IQueryable<Shop_Order_Details>, IOrderedQueryable<Shop_Order_Details>>)(p => p.OrderBy<Shop_Order_Details, string>((Expression<Func<Shop_Order_Details, string>>)(t => t.order_status)));
            }
            return func;
        }

    }
}
