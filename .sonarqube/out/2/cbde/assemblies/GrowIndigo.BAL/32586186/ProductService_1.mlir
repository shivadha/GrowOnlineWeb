// Skipping function GetAllProduct(i32, none), it contains poisonous unsupported syntaxes

// Skipping function GetAllCategory(), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.GetProductDetail$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :54 :8) {
^entry (%_ProductId : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :54 :52)
cbde.store %_ProductId, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :54 :52)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :56 :36) // Not a variable of known type: objIProductRepository
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :56 :75) // Not a variable of known type: ProductId
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :56 :36) // objIProductRepository.GetProductDetail(ProductId) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :57 :19) // Not a variable of known type: getProductDetails
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :57 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.AddOrderDetails$GrowIndigo.DAL.DataEntities.Shop_Product_Master.string$(none, none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :60 :8) {
^entry (%_model : none, %_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :60 :36)
cbde.store %_model, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :60 :36)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :60 :63)
cbde.store %_mobileNumber, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :60 :63)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :62 :45) // new Shop_CartInfo() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :63 :12) // Not a variable of known type: objShop_CartInfo
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :63 :12) // objShop_CartInfo.ProductId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :63 :41) // Not a variable of known type: model
%7 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :63 :41) // model.pkSkuId (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :64 :12) // Not a variable of known type: objShop_CartInfo
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :64 :12) // objShop_CartInfo.RetailerMobileNumber (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :64 :52) // Not a variable of known type: mobileNumber
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :65 :12) // Not a variable of known type: objShop_CartInfo
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :65 :12) // objShop_CartInfo.Price (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :65 :37) // Not a variable of known type: model
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :65 :37) // model.Price (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :66 :12) // Not a variable of known type: objShop_CartInfo
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :66 :12) // objShop_CartInfo.ShippingCharge (SimpleMemberAccessExpression)
%17 = constant 5 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :66 :46)
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :66 :46) // 5.ToString() (InvocationExpression)
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :12) // Not a variable of known type: objShop_CartInfo
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :12) // objShop_CartInfo.TotalPrice (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TotalPrice
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :53) // Not a variable of known type: objShop_CartInfo
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :53) // objShop_CartInfo.Price (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :77) // Not a variable of known type: objShop_CartInfo
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :77) // objShop_CartInfo.ShippingCharge (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :42) // TotalPrice(objShop_CartInfo.Price, objShop_CartInfo.ShippingCharge) (InvocationExpression)
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :67 :42) // TotalPrice(objShop_CartInfo.Price, objShop_CartInfo.ShippingCharge).ToString() (InvocationExpression)
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :68 :12) // Not a variable of known type: objShop_CartInfo
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :68 :12) // objShop_CartInfo.ProductGST (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :68 :42) // Not a variable of known type: model
%30 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :68 :42) // model.GSTPercent (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :69 :12) // Not a variable of known type: objShop_CartInfo
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :69 :12) // objShop_CartInfo.ProductName (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :69 :43) // Not a variable of known type: model
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :69 :43) // model.SkuName (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :70 :12) // Not a variable of known type: objShop_CartInfo
%36 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :70 :12) // objShop_CartInfo.ProductImageUrl (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :70 :47) // Not a variable of known type: model
%38 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :70 :47) // model.imageUrl (SimpleMemberAccessExpression)
%39 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :71 :12) // Not a variable of known type: objShop_CartInfo
%40 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :71 :12) // objShop_CartInfo.ProductDescription (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :71 :50) // Not a variable of known type: model
%42 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :71 :50) // model.Description (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :75 :34) // Not a variable of known type: objIProductRepository
%44 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :75 :72) // Not a variable of known type: objShop_CartInfo
%45 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :75 :34) // objIProductRepository.AddOrderDetails(objShop_CartInfo) (InvocationExpression)
%46 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :75 :16) // addOrderDetails
cbde.store %45, %46 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :75 :16)
%47 = cbde.load %46 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :76 :19)
return %47 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :76 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetProductsbyCategory(none, none, none, none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.TotalPrice$string.string$(none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :96 :8) {
^entry (%_Price : none, %_ShippingCharge : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :96 :33)
cbde.store %_Price, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :96 :33)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :96 :47)
cbde.store %_ShippingCharge, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :96 :47)
br ^0

^0: // JumpBlock
// Entity from another assembly: Convert
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :98 :47) // Not a variable of known type: Price
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :98 :29) // Convert.ToDecimal(Price) (InvocationExpression)
// Entity from another assembly: Convert
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :100 :51) // Not a variable of known type: ShippingCharge
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :100 :33) // Convert.ToDecimal(ShippingCharge) (InvocationExpression)
%7 = constant 100 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :100 :69)
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :100 :33) // Binary expression on unsupported types Convert.ToDecimal(ShippingCharge) / 100
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :102 :37) // Not a variable of known type: IPrice
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :102 :46) // Not a variable of known type: percentage
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :102 :37) // Binary expression on unsupported types IPrice * percentage
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :103 :33) // Not a variable of known type: IPrice
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :103 :42) // Not a variable of known type: IShippingPrice
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :103 :33) // Binary expression on unsupported types IPrice + IShippingPrice
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :104 :19) // Not a variable of known type: TotalPrice
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :104 :19) // TotalPrice.ToString() (InvocationExpression)
return %19 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :104 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.CheckCartProduct$string.string$(none, none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :108 :8) {
^entry (%_productId : none, %_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :108 :37)
cbde.store %_productId, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :108 :37)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :108 :60)
cbde.store %_mobileNumber, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :108 :60)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :37) // Not a variable of known type: objIProductRepository
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :76) // Not a variable of known type: productId
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :87) // Not a variable of known type: mobileNumber
%5 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :37) // objIProductRepository.CheckCartProduct(productId, mobileNumber) (InvocationExpression)
%6 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :16) // checkProductInCart
cbde.store %5, %6 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :110 :16)
%7 = cbde.load %6 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :111 :19)
return %7 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :111 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.GetAllProductList$int.int.string.string.string.string.string.string.int.int$(i32, i32, none, none, none, none, none, none, i32, i32) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :8) {
^entry (%_take : i32, %_skip : i32, %_categoryid : none, %_stateid : none, %_searchtext : none, %_CompanyName : none, %_sort : none, %_CropName : none, %_MinPrice : i32, %_MaxPrice : i32):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :62)
cbde.store %_take, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :62)
%1 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :72)
cbde.store %_skip, %1 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :72)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :82)
cbde.store %_categoryid, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :82)
%3 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :101)
cbde.store %_stateid, %3 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :101)
%4 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :117)
cbde.store %_searchtext, %4 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :117)
%5 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :136)
cbde.store %_CompanyName, %5 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :136)
%6 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :161)
cbde.store %_sort, %6 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :161)
%7 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :179)
cbde.store %_CropName, %7 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :179)
%8 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :199)
cbde.store %_MinPrice, %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :199)
%9 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :215)
cbde.store %_MaxPrice, %9 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :114 :215)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :19) // this (ThisExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :19) // this.objIProductRepository (SimpleMemberAccessExpression)
%12 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :64)
%13 = cbde.load %1 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :70)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :76) // Not a variable of known type: categoryid
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :88) // Not a variable of known type: stateid
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :97) // Not a variable of known type: searchtext
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :109) // Not a variable of known type: CompanyName
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :122) // Not a variable of known type: sort
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :128) // Not a variable of known type: CropName
%20 = cbde.load %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :138)
%21 = cbde.load %9 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :148)
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :19) // this.objIProductRepository.GetAllProductList(take, skip, categoryid, stateid, searchtext, CompanyName, sort, CropName, MinPrice, MaxPrice) (InvocationExpression)
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :19) // this.objIProductRepository.GetAllProductList(take, skip, categoryid, stateid, searchtext, CompanyName, sort, CropName, MinPrice, MaxPrice).ToList() (InvocationExpression)
return %23 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :116 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.GetSubCategoryProductList$int.int.string.string.string.string$(i32, i32, none, none, none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :8) {
^entry (%_take : i32, %_skip : i32, %_categoryid : none, %_stateid : none, %_searchtext : none, %_sort : none):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :70)
cbde.store %_take, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :70)
%1 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :80)
cbde.store %_skip, %1 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :80)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :90)
cbde.store %_categoryid, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :90)
%3 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :109)
cbde.store %_stateid, %3 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :109)
%4 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :125)
cbde.store %_searchtext, %4 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :125)
%5 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :144)
cbde.store %_sort, %5 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :121 :144)
br ^0

^0: // JumpBlock
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :19) // this (ThisExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :19) // this.objIProductRepository (SimpleMemberAccessExpression)
%8 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :72)
%9 = cbde.load %1 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :78)
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :84) // Not a variable of known type: categoryid
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :96) // Not a variable of known type: stateid
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :105) // Not a variable of known type: searchtext
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :117) // Not a variable of known type: sort
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :19) // this.objIProductRepository.GetSubCategoryProductList(take, skip, categoryid, stateid, searchtext, sort) (InvocationExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :19) // this.objIProductRepository.GetSubCategoryProductList(take, skip, categoryid, stateid, searchtext, sort).ToList() (InvocationExpression)
return %15 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :123 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.GetManufactureDetailsProduct$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :128 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :130 :36) // Not a variable of known type: objIProductRepository
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :130 :36) // objIProductRepository.GetManufactureDetailsProduct() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :132 :19) // Not a variable of known type: getCompanyProduct
return %3 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :132 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.CheckMinProductPrice$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :138 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :140 :37) // Not a variable of known type: objIProductRepository
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :140 :37) // objIProductRepository.CheckMinProductPrice() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :141 :19) // Not a variable of known type: getminProductPrice
return %3 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :141 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Product.ProductService.CheckMaxProductPrice$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :144 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :146 :37) // Not a variable of known type: objIProductRepository
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :146 :37) // objIProductRepository.CheckMaxProductPrice() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :147 :19) // Not a variable of known type: getMAxProductPrice
return %3 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Product\\ProductService.cs" :147 :12)

^1: // ExitBlock
cbde.unreachable

}
