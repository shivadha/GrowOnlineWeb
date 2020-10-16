using GrowIndigo.DAL.DataEntities;
using GrowIndigo.DAL.DataRepositories.Order;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.BAL.BussinessServices.Order
{
    public class OrderService : IOrderService
    {
        #region Dependencies Injection with initialization

        private IOrderRepository objIOrder = null;


        public OrderService(IOrderRepository _objIOrder)
        {
            objIOrder = _objIOrder;

        }

        #endregion



        

     

    }
}
