using GrowIndigo.BAL.BussinessServices.Common;
using GrowIndigo.BAL.BussinessServices.Order;
using GrowIndigo.BAL.BussinessServices.Product;
using GrowIndigo.BAL.BussinessServices.User;
using GrowIndigo.DAL.DataRepositories.Common;
using GrowIndigo.DAL.DataRepositories.Order;
using GrowIndigo.DAL.DataRepositories.Product;
using GrowIndigo.DAL.DataRepositories.UnitOfWork;
using GrowIndigo.DAL.DataRepositories.User;
using System.Web.Mvc;
using Unity;
using Unity.Mvc5;


/// <summary>
/// Specifies the Unity configuration for the main container.
/// </summary>
public static class UnityConfig
{
 public static void RegisterComponents()
    {
        var container = new UnityContainer();


        container.RegisterType<IUnitOfWork, UnitOfWork>();

        container.RegisterType<IUserServices, UserServices>();
        container.RegisterType<IUserRepository, UserRepository>();


        container.RegisterType<ICommonService, CommonService>();
        container.RegisterType<ICommonRepository, CommonRepository>();

        container.RegisterType<IProductService, ProductService>();
        container.RegisterType<IProductRepository, ProductRepository>();

        container.RegisterType<IOrderService, OrderService>();
        container.RegisterType<IOrderRepository, OrderRepository>();

        DependencyResolver.SetResolver(new UnityDependencyResolver(container));
    }

}
