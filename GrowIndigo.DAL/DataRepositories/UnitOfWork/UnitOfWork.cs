using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataRepositories.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork, IDisposable
    {
        private readonly GrowOnlineDevEntities context;
        public UnitOfWork(GrowOnlineDevEntities dbContext)
        {
            this.context = dbContext;
        }



        private IRepository<Shop_Retailer_UserMaster> shop_Retailer_UserMasterRepository;
       
        private IRepository<Shop_New_State_Master> state_MasterRepository;
        private IRepository<Shop_Product_Master> shop_Product_MasterRepository;
        private IRepository<Shop_Order_Details> shop_Order_DetailsRepository;
        private IRepository<Shop_OrderProductDetails> shop_OrderProductDetailsRepository;
        private IRepository<Shop_Shipping_address> shop_Shipping_addressRepository;
        private IRepository<Shop_CartInfo> shop_CartInfoRepository;
        private IRepository<shop_ContactUs> shop_ContactUsRepository;
        private IRepository<shop_catagory> shop_catagoryRepository;
        private IRepository<shop_manufacture_master> shop_manufacture_masterRepository;
        private IRepository<Shop_State_Master> shop_State_MasterRepository;
        private IRepository<shop_crops> shop_cropsRepository;
        private IRepository<shop_cmp_image> shop_cmp_imageRepository;
        private IRepository<Shop_New_District_Master> shop_District_MasterRepository;
        private IRepository<Shop_New_Taluka_Master> shop_Taluka_MasterRepository;
        private IRepository<Shop_New_Village_Master> shop_Village_MasterRepository;
















        private bool disposed;
        public IRepository<Shop_Retailer_UserMaster> Shop_Retailer_UserMasterRepository
        {
            get
            {
                if (this.shop_Retailer_UserMasterRepository == null)
                    this.shop_Retailer_UserMasterRepository = (IRepository<Shop_Retailer_UserMaster>)new Repository<Shop_Retailer_UserMaster>(this.context);
                return this.shop_Retailer_UserMasterRepository;
            }
        }
        public IRepository<Shop_New_District_Master> Shop_District_MasterRepository
        {
            get
            {
                if (this.shop_District_MasterRepository == null)
                    this.shop_District_MasterRepository = (IRepository<Shop_New_District_Master>)new Repository<Shop_New_District_Master>(this.context);
                return this.shop_District_MasterRepository;
            }
        }
        public IRepository<Shop_New_Taluka_Master> Shop_Taluka_MasterRepository
        {
            get
            {
                if (this.shop_Taluka_MasterRepository == null)
                    this.shop_Taluka_MasterRepository = (IRepository<Shop_New_Taluka_Master>)new Repository<Shop_New_Taluka_Master>(this.context);
                return this.shop_Taluka_MasterRepository;
            }
        }
        public IRepository<Shop_New_Village_Master> Shop_Village_MasterRepository
        {
            get
            {
                if (this.shop_Village_MasterRepository == null)
                    this.shop_Village_MasterRepository = (IRepository<Shop_New_Village_Master>)new Repository<Shop_New_Village_Master>(this.context);
                return this.shop_Village_MasterRepository;
            }
        }
        public IRepository<shop_cmp_image> Shop_cmp_imageRepository
        {
            get
            {
                if (this.shop_cmp_imageRepository == null)
                    this.shop_cmp_imageRepository = (IRepository<shop_cmp_image>)new Repository<shop_cmp_image>(this.context);
                return this.shop_cmp_imageRepository;
            }
        }

        public IRepository<shop_crops> Shop_cropsRepository
        {
            get
            {
                if (this.shop_cropsRepository == null)
                    this.shop_cropsRepository = (IRepository<shop_crops>)new Repository<shop_crops>(this.context);
                return this.shop_cropsRepository;
            }
        }

        public IRepository<shop_manufacture_master> Shop_manufacture_masterRepository
        {
            get
            {
                if (this.shop_manufacture_masterRepository == null)
                    this.shop_manufacture_masterRepository = (IRepository<shop_manufacture_master>)new Repository<shop_manufacture_master>(this.context);
                return this.shop_manufacture_masterRepository;
            }
        }

        public IRepository<Shop_State_Master> Shop_State_MasterRepository
        {
            get
            {
                if (this.shop_State_MasterRepository == null)
                    this.shop_State_MasterRepository = (IRepository<Shop_State_Master>)new Repository<Shop_State_Master>(this.context);
                return this.shop_State_MasterRepository;
            }
        }

        public IRepository<shop_catagory> Shop_catagoryRepository
        {
            get
            {
                if (this.shop_catagoryRepository == null)
                    this.shop_catagoryRepository = (IRepository<shop_catagory>)new Repository<shop_catagory>(this.context);
                return this.shop_catagoryRepository;
            }
        }

        public IRepository<shop_ContactUs> Shop_ContactUsRepository
        {
            get
            {
                if (this.shop_ContactUsRepository == null)
                    this.shop_ContactUsRepository = (IRepository<shop_ContactUs>)new Repository<shop_ContactUs>(this.context);
                return this.shop_ContactUsRepository;
            }
        }

        public IRepository<Shop_Shipping_address> Shop_Shipping_addressRepository
        {
            get
            {
                if (this.shop_Shipping_addressRepository == null)
                    this.shop_Shipping_addressRepository = (IRepository<Shop_Shipping_address>)new Repository<Shop_Shipping_address>(this.context);
                return this.shop_Shipping_addressRepository;
            }
        }
        public IRepository<Shop_CartInfo> Shop_CartInfoRepository
        {
            get
            {
                if (this.shop_CartInfoRepository == null)
                    this.shop_CartInfoRepository = (IRepository<Shop_CartInfo>)new Repository<Shop_CartInfo>(this.context);
                return this.shop_CartInfoRepository;
            }
        }

        public IRepository<Shop_New_State_Master> State_MasterRepository
        {
            get
            {
                if (this.state_MasterRepository == null)
                    this.state_MasterRepository = (IRepository<Shop_New_State_Master>)new Repository<Shop_New_State_Master>(this.context);
                return this.state_MasterRepository;
            }
        }

        public IRepository<Shop_Order_Details> Shop_Order_DetailsRepository
        {
            get
            {
                if (this.shop_Order_DetailsRepository == null)
                    this.shop_Order_DetailsRepository = (IRepository<Shop_Order_Details>)new Repository<Shop_Order_Details>(this.context);
                return this.shop_Order_DetailsRepository;
            }
        }

        public IRepository<Shop_OrderProductDetails> Shop_OrderProductDetailsRepository
        {
            get
            {
                if (this.shop_OrderProductDetailsRepository == null)
                    this.shop_OrderProductDetailsRepository = (IRepository<Shop_OrderProductDetails>)new Repository<Shop_OrderProductDetails>(this.context);
                return this.shop_OrderProductDetailsRepository;
            }
        }

        public IRepository<Shop_Product_Master> Shop_Product_MasterRepository
        {
            get
            {
                if (this.shop_Product_MasterRepository == null)
                    this.shop_Product_MasterRepository = (IRepository<Shop_Product_Master>)new Repository<Shop_Product_Master>(this.context);
                return this.shop_Product_MasterRepository;
            }
        }
























        public void SaveChanges()
        {
            this.context.SaveChanges();
        }
        public void Dispose()
        {
            this.Dispose(true);
            GC.SuppressFinalize((object)this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed && disposing)
                this.context.Dispose();
            this.disposed = true;
        }

    }
}
