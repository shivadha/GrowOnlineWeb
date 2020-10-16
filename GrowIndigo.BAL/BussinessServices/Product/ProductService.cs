using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.Order;
using GrowIndigo.DAL.DataModels.Product;
using GrowIndigo.DAL.DataRepositories.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.BAL.BussinessServices.Product
{
    public class ProductService : IProductService
    {
        #region Dependencies Injection with initialization

        private IProductRepository objIProductRepository = null;


        public ProductService(IProductRepository _objIProductRepository)
        {
            objIProductRepository = _objIProductRepository;

        }

        #endregion

        public ProductMasterViewModel GetAllProduct(int currentPage = 0, string CategoryName = "")
        {
            try
            {
                //currentPage = 1;
                var productlist = objIProductRepository.GetAllProduct(currentPage, CategoryName);
                return productlist != null ? productlist : null;
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
                var categorylist = objIProductRepository.GetAllCategory();
                return categorylist != null ? categorylist : null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Shop_Product_Master GetProductDetail(string ProductId = "")
        {
            var getProductDetails = objIProductRepository.GetProductDetail(ProductId);
            return getProductDetails;
        }

        public bool AddOrderDetails(Shop_Product_Master model, string mobileNumber = "", int quantity=0)
        {
            Shop_CartInfo objShop_CartInfo = new Shop_CartInfo();
            objShop_CartInfo.ProductId = model.pkSkuId;
            objShop_CartInfo.RetailerMobileNumber = mobileNumber;
            objShop_CartInfo.Price = model.Price;
            if (quantity == 0)
            {
                objShop_CartInfo.Quantity = Convert.ToInt32(model.min_qty_to_book);
            }
            else
            {
                objShop_CartInfo.Quantity = quantity;
            }            
            objShop_CartInfo.Price = model.Price;
            objShop_CartInfo.ShippingCharge = "Free";
            objShop_CartInfo.Quantity = quantity;
            objShop_CartInfo.ProductGST = model.GSTPercent;
            objShop_CartInfo.TotalPrice = TotalPrice(objShop_CartInfo.Price, objShop_CartInfo.ProductGST, Convert.ToInt32(objShop_CartInfo.Quantity)).ToString();
          
            objShop_CartInfo.ProductName = model.SkuName;
            objShop_CartInfo.ProductImageUrl = model.imageUrl;
            objShop_CartInfo.ProductDescription = model.Description;



            var addOrderDetails = objIProductRepository.AddOrderDetails(objShop_CartInfo);
            return addOrderDetails;




        }

        public List<Shop_Product_Master> GetProductsbyCategory(string CategoryName = "", string CompanyName = "", string ProductName = "", string stateName = "")
        {
            try
            {
                var productlist = objIProductRepository.GetProductsbyCategory(CategoryName, CompanyName, ProductName, stateName);
                return productlist != null ? productlist : null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string TotalPrice(string Price, string GstPercent, int quantity)
        {
            decimal IPrice = Convert.ToDecimal(Price);
         
            if (quantity != 0 || quantity != null)
            {
             
                decimal DQuantity = Convert.ToDecimal(quantity);
                IPrice = IPrice * DQuantity;


            }

            decimal percentage = Convert.ToDecimal(GstPercent) / 100;

            decimal IGstPercent = IPrice * percentage;
            decimal  TotalPrice = IPrice + IGstPercent;
            return TotalPrice.ToString();

        }

        public bool CheckCartProduct(string productId = "", string mobileNumber = "")
        {
            var checkProductInCart = objIProductRepository.CheckCartProduct(productId, mobileNumber);
            return checkProductInCart;
        }

        public List<ProductMasterViewModel> GetAllProductList(int take, int skip, string categoryid, string stateid, string searchtext, string CompanyName = "", string sort = "", string CropName="", int MinPrice=0, int MaxPrice=0)
        {
            return this.objIProductRepository.GetAllProductList(take, skip, categoryid, stateid, searchtext, CompanyName, sort, CropName, MinPrice, MaxPrice).ToList();

        }


        public List<ProductMasterViewModel> GetSubCategoryProductList(int take, int skip, string categoryid, string stateid, string searchtext, string sort = "")
        {
            return this.objIProductRepository.GetSubCategoryProductList(take, skip, categoryid, stateid, searchtext, sort).ToList();

        }


        public List<shop_manufacture_master> GetManufactureDetailsProduct()
        {
            var getCompanyProduct = objIProductRepository.GetManufactureDetailsProduct();

            return getCompanyProduct;



        }

        public bool UpdateCart(Shop_CartInfo model)
        {
            var updateCart = objIProductRepository.UpdateCart(model);
            return updateCart;
        }
        public Shop_CartInfo GetCartId(string MobileNumber, int productId)
        {
            var getCartId= objIProductRepository.GetCartId(MobileNumber, productId);
            return getCartId;
        }
        public List<Shop_CartInfo> GetCartIdbyNumber(string MobileNumber)
        {
            var getCartId = objIProductRepository.GetCartIdbyNumber(MobileNumber);
            return getCartId;
        }

        public  double CheckMinProductPrice()
        {
            var getminProductPrice = objIProductRepository.CheckMinProductPrice();
            return getminProductPrice;
        }

        public double  CheckMaxProductPrice()
        {
            var getMAxProductPrice = objIProductRepository.CheckMaxProductPrice();
            return getMAxProductPrice;
        }




    }
}
