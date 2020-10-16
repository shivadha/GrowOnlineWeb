using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataRepositories.UnitOfWork;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Order
{
    public class OrderRepository : IOrderRepository
    {
        #region Dependencies Injection with initialization


        private IUnitOfWork unitOfWork = null;

        public OrderRepository(IUnitOfWork _unitOfWork)
        {
            unitOfWork = _unitOfWork;

        }

        #endregion

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


    }
}
