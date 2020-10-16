using GrowIndigo.BAL.BussinessServices.Product;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataModels.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Unity;

namespace GrowMandi.Web.Controllers
{
    public class ProductMasterController : BaseController
    {
        
        #region Dependencies Injection with initialization


           [Dependency]
        public IProductService ObjIProductService { get; set; }

        [Dependency]
        public IUserServices ObjIUserService { get; set; }

        #endregion

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetProductsbyCategory(string CategoryName = "", string CompanyName="", string ProductName="", string stateName="")
        {

            var getAllProducts = ObjIProductService.GetProductsbyCategory(CategoryName, CompanyName, ProductName, stateName);
            return View(getAllProducts);
        }


       


        public ActionResult GetAllProductForFilter(string CategoryName="")
        {
            TempData["CategoryName"] = CategoryName;
            return View(this.GetAllFilterProduct(1, CategoryName));
        }

        [HttpPost]
        public ActionResult GetAllProductForFilter(int currentPageIndex ,string CategoryName= "")
        {
            //string dcategoryNameata = TempData["CategoryName"].ToString();
            return View(this.GetAllFilterProduct(currentPageIndex, CategoryName));

        }

        private ProductMasterViewModel GetAllFilterProduct(int currentPage = 0, string CategoryName="")
        {
            try
            {
            
                var getAllProducts = ObjIProductService.GetAllProduct(currentPage, CategoryName);
                return getAllProducts;
                //return PartialView("~/Views/ProductMaster/GetAllProduct.cshtml", getAllProducts);
                //var getAllProducts = ObjIProductService.GetAllProduct(stateCode);
                //return PartialView("~/Views/ProductMaster/GetAllProduct.cshtml", getAllProducts);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

       
        public ActionResult GetAllCategory()
        {
            try
            {
                var getAllCategory = ObjIProductService.GetAllCategory();
                return PartialView("~/Views/ProductMaster/GetAllCategory.cshtml", getAllCategory);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// <summary>
        /// get Product detail
        /// </summary>
        /// <param name="ProductId"></param>
        /// <returns></returns>
        public ActionResult GetProductDetail(string ProductId = "")
        {
            try
            {
                TempData["Product"] = "ProductDetail";
                var getProductDetailbyId = ObjIProductService.GetProductDetail(ProductId);

                ProductMasterViewModel objProductMasterViewModel = new ProductMasterViewModel();


                objProductMasterViewModel.pkSkuId = getProductDetailbyId.pkSkuId;
                objProductMasterViewModel.SkuName = getProductDetailbyId.SkuName == null ? "N/A" : getProductDetailbyId.SkuName;
                objProductMasterViewModel.ItemCode = getProductDetailbyId.ItemCode == null ? "N/A" : getProductDetailbyId.ItemCode;
                objProductMasterViewModel.Description = getProductDetailbyId.Description == null ? "N /A" : getProductDetailbyId.Description;
                objProductMasterViewModel.Price = getProductDetailbyId.Price == null ? "N/A" : getProductDetailbyId.Price;
                objProductMasterViewModel.CurrentQuantity = getProductDetailbyId.CurrentQuantity == null ? "N/A" : getProductDetailbyId.CurrentQuantity;
                objProductMasterViewModel.multipleOf = getProductDetailbyId.multipleOf == "" ? "10" : getProductDetailbyId.multipleOf;
                objProductMasterViewModel.SkuCreatedDate = getProductDetailbyId.SkuCreatedDate;
                objProductMasterViewModel.GSTPercent = getProductDetailbyId.GSTPercent == null ? "N/A" : getProductDetailbyId.GSTPercent;
                objProductMasterViewModel.imageUrl = getProductDetailbyId.imageUrl == null ? "~/upload/no-image.jpg" : getProductDetailbyId.imageUrl.ToString().Split(',')[0].ToString(); ;
                objProductMasterViewModel.min_qty_to_book = getProductDetailbyId.min_qty_to_book == null ? "N/A" : getProductDetailbyId.min_qty_to_book;
                objProductMasterViewModel.max_qty_to_book = getProductDetailbyId.max_qty_to_book == null ? "N/A" : getProductDetailbyId.max_qty_to_book;
                objProductMasterViewModel.Prd_company_name = getProductDetailbyId.Prd_company_name == null ? "N/A" : getProductDetailbyId.Prd_company_name;
                objProductMasterViewModel.Allow_SAP_Order = getProductDetailbyId.Allow_SAP_Order;
                objProductMasterViewModel.prd_State = getProductDetailbyId.prd_State == null ? "N/A" : getProductDetailbyId.prd_State;
                objProductMasterViewModel.Status = getProductDetailbyId.Status == null ? "N/A" : getProductDetailbyId.Status;
                objProductMasterViewModel.packingSize = getProductDetailbyId.packingSize == null ? "N/A" : getProductDetailbyId.packingSize;
                objProductMasterViewModel.crp_priority = getProductDetailbyId.crp_priority;
              //  objProductMasterViewModel.crp_catagory = getProductDetailbyId.crp_type;
                objProductMasterViewModel.ProductPriority = getProductDetailbyId.ProductPriority.ToString();
                objProductMasterViewModel.crp_catagory = getProductDetailbyId.crp_catagory == null ? "N/A" : getProductDetailbyId.crp_catagory;
                objProductMasterViewModel.crp_type = getProductDetailbyId.crp_type == null ? "N/A" : getProductDetailbyId.crp_type;
                objProductMasterViewModel.TC = getProductDetailbyId.TC == null ? "N/A" : getProductDetailbyId.TC;
                objProductMasterViewModel.crop = getProductDetailbyId.crop== null ? "N/A" : getProductDetailbyId.crop;


                TempData["ReturnAction"] = "product";
                return View(objProductMasterViewModel);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public JsonResult GetProductDetailForCart(string ProductId = "")
        {
            try
            {
                TempData["Product"] = "ProductDetail";
                var getProductDetailbyId = ObjIProductService.GetProductDetail(ProductId);

                ProductMasterViewModel objProductMasterViewModel = new ProductMasterViewModel();


                objProductMasterViewModel.pkSkuId = getProductDetailbyId.pkSkuId;
                objProductMasterViewModel.SkuName = getProductDetailbyId.SkuName == null ? "N/A" : getProductDetailbyId.SkuName;
                objProductMasterViewModel.ItemCode = getProductDetailbyId.ItemCode == null ? "N/A" : getProductDetailbyId.ItemCode;
                objProductMasterViewModel.Description = getProductDetailbyId.Description == null ? "N /A" : getProductDetailbyId.Description;
                objProductMasterViewModel.Price = getProductDetailbyId.Price == null ? "N/A" : getProductDetailbyId.Price;
                objProductMasterViewModel.CurrentQuantity = getProductDetailbyId.CurrentQuantity == null ? "N/A" : getProductDetailbyId.CurrentQuantity;
                objProductMasterViewModel.multipleOf = getProductDetailbyId.multipleOf == "" ? "10" : getProductDetailbyId.multipleOf;
                objProductMasterViewModel.SkuCreatedDate = getProductDetailbyId.SkuCreatedDate;
                objProductMasterViewModel.GSTPercent = getProductDetailbyId.GSTPercent == null ? "N/A" : getProductDetailbyId.GSTPercent;
                objProductMasterViewModel.imageUrl = getProductDetailbyId.imageUrl == null ? "~/upload/no-image.jpg" : getProductDetailbyId.imageUrl;
                objProductMasterViewModel.min_qty_to_book = getProductDetailbyId.min_qty_to_book == null ? "N/A" : getProductDetailbyId.min_qty_to_book;
                objProductMasterViewModel.max_qty_to_book = getProductDetailbyId.max_qty_to_book == null ? "N/A" : getProductDetailbyId.max_qty_to_book;
                objProductMasterViewModel.Prd_company_name = getProductDetailbyId.Prd_company_name == null ? "N/A" : getProductDetailbyId.Prd_company_name;
                objProductMasterViewModel.Allow_SAP_Order = getProductDetailbyId.Allow_SAP_Order;
                objProductMasterViewModel.prd_State = getProductDetailbyId.prd_State == null ? "N/A" : getProductDetailbyId.prd_State;
                objProductMasterViewModel.Status = getProductDetailbyId.Status == null ? "N/A" : getProductDetailbyId.Status;
                objProductMasterViewModel.packingSize = getProductDetailbyId.packingSize == null ? "N/A" : getProductDetailbyId.packingSize;
                objProductMasterViewModel.crp_priority = getProductDetailbyId.crp_priority;
                //  objProductMasterViewModel.crp_catagory = getProductDetailbyId.crp_type;
                objProductMasterViewModel.ProductPriority = getProductDetailbyId.ProductPriority.ToString();
                objProductMasterViewModel.crp_catagory = getProductDetailbyId.crp_catagory == null ? "N/A" : getProductDetailbyId.crp_catagory;
                objProductMasterViewModel.crp_type = getProductDetailbyId.crp_type == null ? "N/A" : getProductDetailbyId.crp_type;
                objProductMasterViewModel.TC = getProductDetailbyId.TC == null ? "N/A" : getProductDetailbyId.TC;
                objProductMasterViewModel.crop = getProductDetailbyId.crop == null ? "N/A" : getProductDetailbyId.crop;


                TempData["ReturnAction"] = "product";
               
                return Json(objProductMasterViewModel, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /// </summary>
        /// <param name="mobileNumber"></param>
        /// <returns></returns>
        public JsonResult CheckUserProfileUpdated(string mobileNumber = "")
        {
            try
            {
                string usermobileNumber = LoggedInUser.MobileNumber;
                var checkUserProfile = ObjIUserService.CheckUserProfileUpdated(usermobileNumber);
                if (checkUserProfile == true)
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



        public ActionResult GetProductFilter(string CategoryName = "", string State = "", string search = "", string CompanyName = "")
         {

            if (CategoryName.Trim() != "N/A" || CategoryName != "")
            {

                TempData["CategoryName"] = CategoryName;
                ViewBag.SubCategory = CategoryName;     

            }
            else
            {
                TempData["CategoryName"] = null;
            }
            //for company name
            if (CompanyName.Trim() != "N/A" || CompanyName != "")
            {

                TempData["CompanyName"] = CompanyName;
            }
            else
            {
                TempData["CompanyName"] = null;
            }

            //for search
            if (search.Trim() != "N/A" || search != "")
            {

                TempData["search"] = search;
            }
            else
            {
                TempData["search"] = null;
            }

            //ViewBag.SortBy = ObjIUserService.(0, 2);

            // ViewBag.state = ObjICommonService.BindStateDropdown();

            var checkMinProductPrice = ObjIProductService.CheckMinProductPrice();
            var CheckMaxProductPrice = ObjIProductService.CheckMaxProductPrice();
            var MidPricevalue = CheckMaxProductPrice / 2;
            ViewBag.MinPrice = checkMinProductPrice;
            ViewBag.MaxPrice = CheckMaxProductPrice;
            ViewBag.MidPrice = MidPricevalue;

            TempData["stateId"] = null;

            var list = new List<ProductMasterViewModel>();





            return View();
        }

        public JsonResult GetProductList(int counter, string Category = "", string State = "", string Search = "", string CompanyName = "", string Sort = "", string CropName="", int MinPrice=0, int MaxPrice=0)
        {
            int take = 6;
            int skip = counter;
            if (Category == "0")
            {
                Category = "N/A";
            }
            if (State == "0")
            {
                State = "N/A";
            }
            if (Search == "0")
            {
                Search = "N/A";

            }
            if (CompanyName == "0")
            {
                CompanyName = "N/A";
            }

            var list = ObjIProductService.GetAllProductList(take, skip, Category, State, Search, CompanyName, Sort, CropName, MinPrice, MaxPrice);



            var returnResult = Json(list, JsonRequestBehavior.AllowGet);
            returnResult.MaxJsonLength = int.MaxValue;
            return returnResult;
        }



        public ActionResult GetSubCategoriesProductFilter(string CategoryName = "", string CropName="",string State = "", string search = "", string CompanyName = "")
        {

            if (CategoryName.Trim() != "N/A" || CategoryName != "")
            {

                TempData["CategoryName"] = CategoryName;
                ViewBag.SubCategory = CategoryName;

            }
            else
            {
                TempData["CategoryName"] = null;
            }

            //for cropname
            if (CropName.Trim() != "N/A" || CropName != "")
            {

                TempData["CropName"] = CropName;
               // ViewBag.SubCategory = CategoryName;

            }

            //for company name
            if (CompanyName.Trim() != "N/A" || CompanyName != "")
            {

                TempData["CompanyName"] = CompanyName;
            }
            else
            {
                TempData["CompanyName"] = null;
            }

            //for search
            if (search.Trim() != "N/A" || search != "")
            {

                TempData["search"] = search;
            }
            else
            {
                TempData["search"] = null;
            }

            //ViewBag.SortBy = ObjIUserService.(0, 2);

            // ViewBag.state = ObjICommonService.BindStateDropdown();



            TempData["stateId"] = null;

            var list = new List<ProductMasterViewModel>();





            return View();
        }
        public JsonResult GetSubCategoryProductList(int counter, string Category = "", string State = "", string Search = "", string Sort = "")
        {
            int take = 8;
            int skip = counter;
            if (Category == "0")
            {
                Category = "N/A";
            }
            if (State == "0")
            {
                State = "N/A";
            }
            if (Search == "0")
            {
                Search = "N/A";

            }
          

            var list = ObjIProductService.GetSubCategoryProductList(take, skip, Category, State, Search, Sort);


            var checkMinProductPrice = ObjIProductService.CheckMinProductPrice();
            var CheckMaxProductPrice = ObjIProductService.CheckMaxProductPrice();
            var MidPricevalue = CheckMaxProductPrice / 2;
            ViewBag.MinPrice = checkMinProductPrice;
            ViewBag.MaxPrice = CheckMaxProductPrice;
            ViewBag.MidPrice = MidPricevalue;

            TempData["stateId"] = null;

            //var list = new List<ProductMasterViewModel>();

            var returnResult = Json(list, JsonRequestBehavior.AllowGet);
            returnResult.MaxJsonLength = int.MaxValue;
            return returnResult;
        }

        public JsonResult UpdateCartDetailFOrUser(int  productId = 0 , string TotalPrice="")
        {

            string Mobilenumber = LoggedInUser.MobileNumber;
            double Totalsum = 0;
            var GetCartId = ObjIProductService.GetCartId(Mobilenumber, productId);
            var cartId = GetCartId.Id;
           
                GetCartId.TotalPrice = TotalPrice;
                var updateCartRecordForProduct = ObjIProductService.UpdateCart(GetCartId);
                if (updateCartRecordForProduct)
                {
                    var GetTotalPrice = ObjIProductService.GetCartIdbyNumber(Mobilenumber);
                    foreach (var sum in GetTotalPrice)
                    {
                        double Totalprice = Convert.ToDouble(sum.TotalPrice);

                        Totalsum += Totalprice;

                    }

                    return Json(Totalsum, JsonRequestBehavior.AllowGet);
                }

            return Json(Totalsum, JsonRequestBehavior.AllowGet);
        }



    }
}