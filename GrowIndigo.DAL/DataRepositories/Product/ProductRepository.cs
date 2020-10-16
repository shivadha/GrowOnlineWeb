using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.Product;
using GrowIndigo.DAL.DataModels.CommonModels;
using GrowIndigo.DAL.DataRepositories.UnitOfWork;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using LinqKit;

namespace GrowIndigo.DAL.DataRepositories.Product
{
    public class ProductRepository : IProductRepository
    {
        #region Dependencies Injection with initialization


        private IUnitOfWork unitOfWork = null;

        public ProductRepository(IUnitOfWork _unitOfWork)
        {
            unitOfWork = _unitOfWork;

        }

        #endregion
        public ProductMasterViewModel GetAllProduct(int currentPage, string CategoryName)
        {
            try
            {
                int maxRows = 10;
                using (GrowOnlineDevEntities entities = new GrowOnlineDevEntities())
                {
                    ProductMasterViewModel customerModel = new ProductMasterViewModel();

                    customerModel.Customers = (from customer in entities.Shop_Product_Master
                                               where customer.crp_catagory == CategoryName && customer.Status == "Active"
                                               select customer)
                                .OrderBy(customer => customer.pkSkuId)
                                .Skip((currentPage - 1) * maxRows)
                                .Take(maxRows).ToList();

                    double pageCount = (double)((decimal)entities.Shop_Product_Master.Count() / Convert.ToDecimal(maxRows));
                    customerModel.PageCount = (int)Math.Ceiling(pageCount);

                    customerModel.CurrentPageIndex = currentPage;

                    return customerModel;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<shop_catagory> GetAllCategory()
        {
            try
            {
                var categoryList = unitOfWork.Shop_catagoryRepository.SearchBy(x => x.status == "Active").ToList();
                return categoryList != null ? categoryList : null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Shop_Product_Master GetProductDetail(string ProductId = "")
        {
            try
            {
                int productID = Convert.ToInt32(ProductId);
                var productlist = unitOfWork.Shop_Product_MasterRepository.SearchBy(x => x.pkSkuId == productID).FirstOrDefault();
                return productlist != null ? productlist : null;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool AddOrderDetails(Shop_CartInfo model)
        {
            try
            {

                unitOfWork.Shop_CartInfoRepository.Insert(model);

                unitOfWork.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                throw ex;

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

        public List<Shop_OrderProductDetails> GetOrderProductDetails(Shop_OrderProductDetails model)
        {
            string orderid = model.order_id;
            var GetOrderDetails = unitOfWork.Shop_OrderProductDetailsRepository.SearchBy(x => x.order_id == orderid).ToList();
            return GetOrderDetails;
        }
        public bool CheckCartProduct(string productId = "", string mobileNumber = "")
        {
            int IntProductId = Convert.ToInt32(productId);
            var checkProduct = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.ProductId == IntProductId && x.RetailerMobileNumber == mobileNumber).FirstOrDefault();
            if (checkProduct != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public List<Shop_Product_Master> GetProductsbyCategory(string CategoryName = "", string CompanyName = "", string ProductName = "", string stateName = "")
        {
            try
            {
                var productlist = unitOfWork.Shop_Product_MasterRepository.SearchBy(x => x.crp_catagory == CategoryName && x.Status == "Active").ToList();
                return productlist;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ProductMasterViewModel> GetAllProductList(int take, int skip, string categoryid, string stateid, string searchtext, string CompanyName = "", string sort = "", string CropName = "", int MinPrice = 0, int MaxPrice = 0)
        {
            try
            {

                int totalCount = 0;
                var DTParameterModel = new DTParameterModel();
                List<ProductMasterViewModel> data = unitOfWork.Shop_Product_MasterRepository.GetAllList(out totalCount, ProductFilter(
           take, skip, categoryid, stateid, searchtext, CompanyName, sort, CropName, MinPrice, MaxPrice)).OrderByDescending(y => y.SkuCreatedDate).Select<Shop_Product_Master, ProductMasterViewModel>((Func<Shop_Product_Master, ProductMasterViewModel>)(x =>
          {
              //string currentLangugae = Thread.CurrentThread.CurrentCulture.ToString();

              ProductMasterViewModel productMasterViewModel = new ProductMasterViewModel();
              productMasterViewModel.pkSkuId = x.pkSkuId;
              productMasterViewModel.SkuName = x.SkuName;
              productMasterViewModel.Price = x.Price;
              productMasterViewModel.IntPrice = x.IntPrice;
              productMasterViewModel.packingSize = x.packingSize;
              productMasterViewModel.CurrentQuantity = x.CurrentQuantity;
              productMasterViewModel.SkuCreatedDate = x.SkuCreatedDate;
              productMasterViewModel.imageUrl = x.imageUrl;
              productMasterViewModel.ProductStatus = x.CurrentQuantity != null ?  x.CurrentQuantity != "0" ? "Available" : "Out of Stock": "Out of Stock";
              productMasterViewModel.prd_State = x.prd_State;
              productMasterViewModel.Status = x.Status;
              productMasterViewModel.isApprove = x.isApprove;
              productMasterViewModel.crp_catagory = x.crp_catagory;
              productMasterViewModel.crop = x.crop;
              productMasterViewModel.Description = x.Description;
              productMasterViewModel.ProductPriority = x.ProductPriority.ToString();
              productMasterViewModel.SkuCreatedDate = x.SkuCreatedDate;

              return productMasterViewModel;
          })).OrderBy(z=> z.ProductPriority == "1").OrderBy(x => x.ProductPriority == "2")
          .OrderBy(x => x.ProductPriority == "0").OrderByDescending(x => x.SkuCreatedDate).OrderBy(x=>x.ProductStatus).ToList();

                

                 if (sort.Trim() != "N/A")
                {
                    if (sort == "Asc")
                    {
                        return data.OrderBy(x => x.IntPrice).Skip(skip).Take(take).ToList();
                    }
                    else if (sort == "Desc")
                    {
                        return data.OrderByDescending(x => x.IntPrice).Skip(skip).Take(take).ToList();
                    }
                    else
                    {
                        return data.Skip(skip).Take(take).ToList();
                    }


                }
                return data.Skip(skip).Take(take).ToList();



            }
            catch (Exception ex)

            {
                throw ex;
            }
        }




        private Expression<Func<Shop_Product_Master, bool>> ProductFilter(
         int take, int skip, string categoryName, string stateid, string searchtext, string CompanyName, string sort, string CropName, int MinPrice = 0, int MaxPrice = 0)
        {
            Expression<Func<Shop_Product_Master, bool>> expression = PredicateBuilder.New<Shop_Product_Master>(true);
            expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.Status == "Active")));
            if (stateid == "null")
            {
                stateid = "N/A";
            }
            if (CropName.Trim() == "")
            {
                CropName = "N/A";
            }

            if (MinPrice != 0 & MaxPrice != 0)
            {
                // decimal decMaxPrice = Convert.ToDecimal(MaxPrice);
                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.IntPrice <= MaxPrice) && (p.IntPrice >= MinPrice)));
            }
            if (searchtext.Trim() != "N/A")
            {


                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.SkuName.ToLower().Contains(searchtext.ToLower()) || p.Status.ToLower().Contains(searchtext.ToLower()) || p.Description.ToLower().Contains(searchtext.ToLower()))));


            }

            if (categoryName.Trim() != "N/A")
            {
                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.crp_catagory == categoryName)));

            }

            if (stateid.Trim() != "N/A")
            {
                var IntState = Convert.ToInt32(stateid);
                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.Prd_StateId == IntState)));

            }
            if (CropName.Trim() != "N/A")
            {
                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.crop == CropName)));

            }
            if (CompanyName.Trim() != "N/A")
            {
                expression = expression.And<Shop_Product_Master>((Expression<Func<Shop_Product_Master, bool>>)(p => (p.Prd_company_name == CompanyName)));

            }


            return expression.Expand<Func<Shop_Product_Master, bool>>();
        }

        public List<shop_manufacture_master> GetManufactureDetailsProduct()
        {
            try
            {
                var list = unitOfWork.Shop_manufacture_masterRepository.GetAll().ToList();
                return list != null ? list : null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UpdateCart(Shop_CartInfo model)
        {
            try
            {

                unitOfWork.Shop_CartInfoRepository.Update(model);

                unitOfWork.SaveChanges();

                return true;

            }
            catch (Exception)
            {

                throw;
            }
        }



        //for seed sub category


        public List<ProductMasterViewModel> GetSubCategoryProductList(int take, int skip, string categoryid, string stateid, string searchtext, string sort = "")
        {
            try
            {

                int totalCount = 0;
                var DTParameterModel = new DTParameterModel();
                List<ProductMasterViewModel> data = unitOfWork.Shop_cropsRepository.GetAllList(out totalCount, GetSubCategoryProductListFilter(
             take, skip, categoryid, stateid, searchtext, sort)).Skip(skip).Take(take).Select<shop_crops, ProductMasterViewModel>((Func<shop_crops, ProductMasterViewModel>)(x =>
             {
                 //string currentLangugae = Thread.CurrentThread.CurrentCulture.ToString();
                 ProductMasterViewModel productMasterViewModel = new ProductMasterViewModel();
                 productMasterViewModel.tr_id = x.tr_id;
                 productMasterViewModel.crp_Type = x.crp_Type;
                 productMasterViewModel.crp_catagary = x.crp_catagary;
                 productMasterViewModel.status = x.status;
                 productMasterViewModel.imgurl = x.imgurl;


                 return productMasterViewModel;
             })).ToList();

                if (sort.Trim() != "N/A")
                {
                    if (sort == "name")
                    {
                        return data.OrderBy(x => x.SkuName).ToList();
                    }
                    else if (sort == "price")
                    {
                        return data.OrderBy(x => x.Price).ToList();
                    }
                    else
                    {
                        return data;
                    }


                }
                return data;



            }
            catch (Exception ex)

            {
                throw ex;
            }
        }




        private Expression<Func<shop_crops, bool>> GetSubCategoryProductListFilter(
         int take, int skip, string categoryName, string stateid, string searchtext, string sort)
        {
            Expression<Func<shop_crops, bool>> expression = PredicateBuilder.New<shop_crops>(true);
            expression = expression.And<shop_crops>((Expression<Func<shop_crops, bool>>)(p => (p.status == "Active")));
            if (stateid == "null")
            {
                stateid = "N/A";
            }
            if (searchtext.Trim() != "N/A")
            {


                expression = expression.And<shop_crops>((Expression<Func<shop_crops, bool>>)(p => (p.crp_Type.ToLower().Contains(searchtext.ToLower()) || p.crp_catagary.ToLower().Contains(searchtext.ToLower()) || p.status.ToLower().Contains(searchtext.ToLower()))));


            }

            if (categoryName.Trim() != "N/A")
            {
                expression = expression.And<shop_crops>((Expression<Func<shop_crops, bool>>)(p => (p.crp_catagary == categoryName)));

            }

            //if (stateid.Trim() != "N/A")
            //{
            //    int IntState = Convert.ToInt32(stateid);
            //    expression = expression.And<shop_crops>((Expression<Func<shop_crops, bool>>)(p => (p.Prd_StateId == IntState)));

            //}




            return expression.Expand<Func<shop_crops, bool>>();
        }


        public Shop_CartInfo GetCartId(string MobileNumber, int productId)
        {
            var getCartId = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.RetailerMobileNumber == MobileNumber && x.ProductId == productId).FirstOrDefault();
            return getCartId;
        }


        public List<Shop_CartInfo> GetCartIdbyNumber(string MobileNumber)
        {
            var getCartId = unitOfWork.Shop_CartInfoRepository.SearchBy(x => x.RetailerMobileNumber == MobileNumber).ToList();
            return getCartId;
        }
        public double CheckMaxProductPrice()
        {
            GrowOnlineDevEntities objGrowOnlineDevEntities = new GrowOnlineDevEntities();
            var maxPrice = objGrowOnlineDevEntities.Shop_Product_Master.Max(x => x.IntPrice);
            var maxPriceDouble = Convert.ToDouble(maxPrice);
            return maxPriceDouble;
        }

        public double CheckMinProductPrice()
        {
            GrowOnlineDevEntities objGrowOnlineDevEntities = new GrowOnlineDevEntities();
            var minPrice = objGrowOnlineDevEntities.Shop_Product_Master.Min(x => x.IntPrice);
            var minPriceDouble = Convert.ToDouble(minPrice);
            return minPriceDouble;
        }








        //private Func<IQueryable<Shop_Product_Master>, IOrderedQueryable<Shop_Product_Master>> DynamicInformationPageByFilter(
        // DTParameterModel criteria)
        //{
        //    Func<IQueryable<Shop_Product_Master>, IOrderedQueryable<Shop_Product_Master>> func = (Func<IQueryable<DynamicInformationPage>, IOrderedQueryable<DynamicInformationPage>>)null;
        //    if (criteria.Order != null && criteria.Order.Count<DTOrder>() > 0)
        //    {
        //        string dir = criteria.Order.FirstOrDefault<DTOrder>().Dir;
        //        int column = criteria.Order.FirstOrDefault<DTOrder>().Column;
        //        DTColumn dtColumn = criteria.Columns.ToList<DTColumn>().ElementAt<DTColumn>(column);
        //        if (dtColumn.Name == "Title")
        //            func = !dir.Equals("asc") ? (Func<IQueryable<DynamicInformationPage>, IOrderedQueryable<DynamicInformationPage>>)(p => p.OrderByDescending<DynamicInformationPage, string>((Expression<Func<DynamicInformationPage, string>>)(t => t.Title))) : (Func<IQueryable<DynamicInformationPage>, IOrderedQueryable<DynamicInformationPage>>)(p => p.OrderBy<DynamicInformationPage, string>((Expression<Func<DynamicInformationPage, string>>)(t => t.Title)));
        //        if (dtColumn.Name == "IsActive")
        //            func = !dir.Equals("asc") ? (Func<IQueryable<DynamicInformationPage>, IOrderedQueryable<DynamicInformationPage>>)(p => p.OrderByDescending<DynamicInformationPage, string>((Expression<Func<DynamicInformationPage, string>>)(t => t.IsActive.ToString()))) : (Func<IQueryable<DynamicInformationPage>, IOrderedQueryable<DynamicInformationPage>>)(p => p.OrderBy<DynamicInformationPage, string>((Expression<Func<DynamicInformationPage, string>>)(t => t.IsActive.ToString())));

        //    }
        //    return func;
        //}





    }

}

