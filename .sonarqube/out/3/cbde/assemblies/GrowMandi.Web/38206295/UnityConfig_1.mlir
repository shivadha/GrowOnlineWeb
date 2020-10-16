func @_UnityConfig.RegisterComponents$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :19 :1) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :21 :24) // new UnityContainer() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :24 :8) // Not a variable of known type: container
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :24 :8) // container.RegisterType<IUnitOfWork, UnitOfWork>() (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :26 :8) // Not a variable of known type: container
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :26 :8) // container.RegisterType<IUserServices, UserServices>() (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :27 :8) // Not a variable of known type: container
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :27 :8) // container.RegisterType<IUserRepository, UserRepository>() (InvocationExpression)
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :30 :8) // Not a variable of known type: container
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :30 :8) // container.RegisterType<ICommonService, CommonService>() (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :31 :8) // Not a variable of known type: container
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :31 :8) // container.RegisterType<ICommonRepository, CommonRepository>() (InvocationExpression)
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :33 :8) // Not a variable of known type: container
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :33 :8) // container.RegisterType<IProductService, ProductService>() (InvocationExpression)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :34 :8) // Not a variable of known type: container
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :34 :8) // container.RegisterType<IProductRepository, ProductRepository>() (InvocationExpression)
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :36 :8) // Not a variable of known type: container
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :36 :8) // container.RegisterType<IOrderService, OrderService>() (InvocationExpression)
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :37 :8) // Not a variable of known type: container
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :37 :8) // container.RegisterType<IOrderRepository, OrderRepository>() (InvocationExpression)
// Entity from another assembly: DependencyResolver
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :39 :67) // Not a variable of known type: container
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :39 :39) // new UnityDependencyResolver(container) (ObjectCreationExpression)
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\UnityConfig.cs" :39 :8) // DependencyResolver.SetResolver(new UnityDependencyResolver(container)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
