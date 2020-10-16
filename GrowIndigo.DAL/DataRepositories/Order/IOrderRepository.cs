using GrowIndigo.DAL.DataEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GrowIndigo.DAL.DataRepositories.Order
{
    public interface IOrderRepository
    {

        Shop_Order_Details AddOrderDetail(Shop_Order_Details model);
        bool AddProductOrderDetail(Shop_OrderProductDetails model);
    }
}
