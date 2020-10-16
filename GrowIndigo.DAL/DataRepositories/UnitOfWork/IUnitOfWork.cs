using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataRepositories.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.UnitOfWork
{
    public interface IUnitOfWork
    {

        void SaveChanges();
        IRepository<Shop_Retailer_UserMaster> Shop_Retailer_UserMasterRepository { get; }
        IRepository<Shop_Product_Master> Shop_Product_MasterRepository { get; }
        IRepository<Shop_New_State_Master> State_MasterRepository { get; }
        IRepository<Shop_Order_Details> Shop_Order_DetailsRepository { get; }
        IRepository<shop_cmp_image> Shop_cmp_imageRepository { get; }
        IRepository<Shop_OrderProductDetails> Shop_OrderProductDetailsRepository { get; }
        IRepository<Shop_Shipping_address> Shop_Shipping_addressRepository { get; }
        IRepository<Shop_New_District_Master> Shop_District_MasterRepository { get; }
        IRepository<Shop_New_Taluka_Master> Shop_Taluka_MasterRepository { get; }
        IRepository<Shop_New_Village_Master> Shop_Village_MasterRepository { get; }
        IRepository<Shop_CartInfo> Shop_CartInfoRepository { get; }
        IRepository<shop_ContactUs> Shop_ContactUsRepository { get; }
        IRepository<shop_catagory> Shop_catagoryRepository { get; }
        IRepository<shop_manufacture_master> Shop_manufacture_masterRepository { get; }
        IRepository<Shop_State_Master> Shop_State_MasterRepository { get; }
        IRepository<shop_crops> Shop_cropsRepository { get; }
    }
}
