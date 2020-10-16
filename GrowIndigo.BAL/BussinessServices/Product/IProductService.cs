using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataModels.Order;
using GrowIndigo.DAL.DataModels.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.BAL.BussinessServices.Product
{
    public interface IProductService
    {

        bool UpdateCart(Shop_CartInfo model);
        ProductMasterViewModel GetAllProduct(int currentPage, string CategoryName="");
        Shop_Product_Master GetProductDetail(string ProductId);
        bool AddOrderDetails(Shop_Product_Master model, string mobileNumber = "", int quantity=0);
        Shop_CartInfo GetCartId(string MobileNumber, int productId);
        List<Shop_CartInfo> GetCartIdbyNumber(string MobileNumber);
        bool CheckCartProduct(string productId = "", string mobileNumber="");
        List<shop_catagory> GetAllCategory();
        double CheckMinProductPrice();
        double CheckMaxProductPrice();

        List<ProductMasterViewModel> GetSubCategoryProductList(int take, int skip, string categoryid, string stateid, string searchtext, string Sort = "");
        List<ProductMasterViewModel> GetAllProductList(int take, int skip, string categoryid, string stateid, string searchtext, string CompanyName = "", string Sort="", string CropName="", int MinPrice = 0, int MaxPrice = 0);
        List<Shop_Product_Master> GetProductsbyCategory(string CategoryName = "", string CompanyName = "", string ProductName = "", string stateName = "");

        List<shop_manufacture_master> GetManufactureDetailsProduct();
    }
}
