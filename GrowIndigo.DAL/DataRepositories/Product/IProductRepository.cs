using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Product
{
   public  interface IProductRepository
    {

        bool UpdateCart(Shop_CartInfo model);
        List<Shop_CartInfo> GetCartIdbyNumber(string MobileNumber);
        Shop_Product_Master GetProductDetail(string ProductId = "");
        ProductMasterViewModel GetAllProduct(int currentPage, string CategoryName);
        bool AddOrderDetails(Shop_CartInfo model);
        List<Shop_OrderProductDetails> GetOrderProductDetails(Shop_OrderProductDetails model);
        bool CheckCartProduct(string productId = "", string mobileNumber="");
        List<shop_catagory> GetAllCategory();
        List<Shop_Product_Master> GetProductsbyCategory(string CategoryName = "", string CompanyName = "", string ProductName = "", string stateName = "");
        List<ProductMasterViewModel> GetAllProductList(int take, int skip, string categoryid, string stateid, string searchtext, string CompanyName = "", string sort ="", string CropName = "", int MinPrice = 0, int MaxPrice = 0);
        List<shop_manufacture_master> GetManufactureDetailsProduct();
        List<ProductMasterViewModel> GetSubCategoryProductList(int take, int skip, string categoryid, string stateid, string searchtext, string sort = "");
        double CheckMinProductPrice();
        double CheckMaxProductPrice();
        Shop_CartInfo GetCartId(string MobileNumber, int productId);

    }
}
