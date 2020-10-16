func @_GrowIndigo.BAL.UnityConfig.RegisterComponents$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\App_Start\\UnityConfig.cs" :8 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\App_Start\\UnityConfig.cs" :10 :19) // new UnityContainer() (ObjectCreationExpression)
// Entity from another assembly: DependencyResolver
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\App_Start\\UnityConfig.cs" :18 :71) // Not a variable of known type: container
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\App_Start\\UnityConfig.cs" :18 :43) // new UnityDependencyResolver(container) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\App_Start\\UnityConfig.cs" :18 :12) // DependencyResolver.SetResolver(new UnityDependencyResolver(container)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
