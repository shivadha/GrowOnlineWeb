using GrowIndigo.DAL.DataEntities;
using GrowIndigo.Utilities.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataModels.Product
{
    public class ProductMasterViewModel
    {
        public List<Shop_Product_Master> Customers { get; set; }


        public int CurrentPageIndex { get; set; }


        public int PageCount { get; set; }


        // [Display(Name = "Product Id")]
        //    [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_ProductIDReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_ProductId")]
        public int pkSkuId { get; set; }

        // [Display(Name = "Product Name")]
        // [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_ProductName")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_ProductName")]
        public string SkuName { get; set; }

        //  [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_ItemCodeReq")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_ItemCode")]
        //[Display(Name = "Item Code")]
        public string ItemCode { get; set; }

        //[Display(Name = "Description")]
        //  [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Description")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Description")]
        public string Description { get; set; }

        //[Display(Name = "Price")]
        //   [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_Price")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Price")]
        public string Price { get; set; }
       
        public Nullable<decimal> IntPrice { get; set; }


        //   [Display(Name = "Current Quantity")]
        //   [Required(ErrorMessageResourceType = typeof(Resource), ErrorMessageResourceName = "GrowOnline_Message_CurrentQuality")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_CurrentQuantity")]
        public string CurrentQuantity { get; set; }

        public string multipleOf { get; set; }
        //[Display(Name = "Created Date ")] 
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Daqte")]
        public Nullable<System.DateTime> SkuCreatedDate { get; set; }

        //[Display(Name = "GST  Percentage ")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_gst")]
        public string GSTPercent { get; set; }

        [Display(Name = "Image URL ")]
        public string imageUrl { get; set; }

      //  [Display(Name = "Minimum Quantity to Book")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_minQuan")]
        public string min_qty_to_book { get; set; }

       // [Display(Name = "Maximum Quantity to Book")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_maxQuan")] 
        public string max_qty_to_book { get; set; }

       // [Display(Name = "Company Name")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Companyname")]
        public string Prd_company_name { get; set; }

        [Display(Name = "Sap Order")]
        //[Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_maxQuan")]
        public Nullable<int> Allow_SAP_Order { get; set; }

       // [Display(Name = "State")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_State")]
        public string prd_State { get; set; }
        public int ? CropRank { get; set; }
        public string CropStatusForDisplay { get; set; }

        public int ? stateId { get; set; }

        public string ProductStatus { get; set; }

        // [Display(Name = "Status")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Status")]
        public string Status { get; set; }

        [Display(Name = "Product Priority")]
       // [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_maxQuan")]
        public string ProductPriority { get; set; }

        [Display(Name = "Is Approve")]
        public string isApprove { get; set; }

       // [Display(Name = "Category")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_CropCategory")]
        public string crp_catagory { get; set; }

      //  [Display(Name = "Crop Type")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_CropType")]
        public string crp_type { get; set; }

        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_PackSize")]
        public string packingSize { get; set; }
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Message_TermsC")]
        public string TC { get; set; }
        public Nullable<int> cmp_priority { get; set; }

       // [Display(Name = "Crop Priority")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_CrpPriority")]
        // [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_maxQuan")]
        public Nullable<int> crp_priority { get; set; }

      //  [Display(Name = "Crop")]
        [Display(ResourceType = typeof(Resource), Name = "GrowOnline_Common_Crop")]
        public string crop { get; set; }



        //for crop sub category
        public int tr_id { get; set; }
        public string crp_Type { get; set; }
        public string crp_catagary { get; set; }
        public string status { get; set; }
        public string imgurl { get; set; }


















    }
}
