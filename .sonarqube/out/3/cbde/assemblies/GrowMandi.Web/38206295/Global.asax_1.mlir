func @_GrowMandi.Web.MvcApplication.Application_Start$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :13 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UnityConfig
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :15 :12) // UnityConfig.RegisterComponents() (InvocationExpression)
// Entity from another assembly: AreaRegistration
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :16 :12) // AreaRegistration.RegisterAllAreas() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FilterConfig
// Entity from another assembly: GlobalFilters
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :17 :47) // GlobalFilters.Filters (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :17 :12) // FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RouteConfig
// Entity from another assembly: RouteTable
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :18 :39) // RouteTable.Routes (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :18 :12) // RouteConfig.RegisterRoutes(RouteTable.Routes) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BundleConfig
// Entity from another assembly: BundleTable
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :19 :41) // BundleTable.Bundles (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :19 :12) // BundleConfig.RegisterBundles(BundleTable.Bundles) (InvocationExpression)
// Entity from another assembly: GlobalFilters
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :20 :12) // GlobalFilters.Filters (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :20 :38) // new CustomExceptionFilter() (ObjectCreationExpression)
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :20 :12) // GlobalFilters.Filters.Add(new CustomExceptionFilter()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Application_BeginRequest(none, none), it contains poisonous unsupported syntaxes

func @_GrowMandi.Web.MvcApplication.Application_BeginRequest$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :39 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :41 :12) // Identifier from another assembly: Response
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :41 :12) // Response.Cache (SimpleMemberAccessExpression)
// Entity from another assembly: HttpCacheability
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :41 :43) // HttpCacheability.NoCache (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :41 :12) // Response.Cache.SetCacheability(HttpCacheability.NoCache) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :12) // Identifier from another assembly: Response
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :12) // Response.Cache (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :38) // DateTime.UtcNow (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :64)
%8 = cbde.neg %7 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :63)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :38) // DateTime.UtcNow.AddHours(-1) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :42 :12) // Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1)) (InvocationExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :43 :12) // Identifier from another assembly: Response
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :43 :12) // Response.Cache (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Global.asax.cs" :43 :12) // Response.Cache.SetNoStore() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
