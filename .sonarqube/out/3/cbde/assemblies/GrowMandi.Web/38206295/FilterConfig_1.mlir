func @_GrowMandi.Web.FilterConfig.RegisterGlobalFilters$System.Web.Mvc.GlobalFilterCollection$(none) -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :7 :8) {
^entry (%_filters : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :7 :49)
cbde.store %_filters, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :7 :49)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :9 :12) // Not a variable of known type: filters
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :9 :24) // new HandleErrorAttribute() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\App_Start\\FilterConfig.cs" :9 :12) // filters.Add(new HandleErrorAttribute()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
