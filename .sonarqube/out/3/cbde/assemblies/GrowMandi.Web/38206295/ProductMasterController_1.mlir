func @_GrowMandi.Web.Controllers.ProductMasterController.Index$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :27 :19) // View() (InvocationExpression)
return %0 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.ProductMasterController.GetProductsbyCategory$string.string.string.string$(none, none, none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :8) {
^entry (%_CategoryName : none, %_CompanyName : none, %_ProductName : none, %_stateName : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :50)
cbde.store %_CategoryName, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :50)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :76)
cbde.store %_CompanyName, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :76)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :99)
cbde.store %_ProductName, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :99)
%3 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :122)
cbde.store %_stateName, %3 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :30 :122)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :33) // Not a variable of known type: ObjIProductService
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :74) // Not a variable of known type: CategoryName
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :88) // Not a variable of known type: CompanyName
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :101) // Not a variable of known type: ProductName
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :114) // Not a variable of known type: stateName
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :33 :33) // ObjIProductService.GetProductsbyCategory(CategoryName, CompanyName, ProductName, stateName) (InvocationExpression)
// Entity from another assembly: View
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :34 :24) // Not a variable of known type: getAllProducts
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :34 :19) // View(getAllProducts) (InvocationExpression)
return %12 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.ProductMasterController.GetAllProductForFilter$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :41 :8) {
^entry (%_CategoryName : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :41 :51)
cbde.store %_CategoryName, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :41 :51)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :43 :12) // Identifier from another assembly: TempData
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :43 :21) // "CategoryName" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :43 :12) // TempData["CategoryName"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :43 :39) // Not a variable of known type: CategoryName
// Entity from another assembly: View
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :24) // this (ThisExpression)
%6 = constant 1 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :49)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :52) // Not a variable of known type: CategoryName
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :24) // this.GetAllFilterProduct(1, CategoryName) (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :19) // View(this.GetAllFilterProduct(1, CategoryName)) (InvocationExpression)
return %9 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :44 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.ProductMasterController.GetAllProductForFilter$int.string$(i32, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :47 :8) {
^entry (%_currentPageIndex : i32, %_CategoryName : none):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :48 :51)
cbde.store %_currentPageIndex, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :48 :51)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :48 :73)
cbde.store %_CategoryName, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :48 :73)
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :24) // this (ThisExpression)
%3 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :49)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :67) // Not a variable of known type: CategoryName
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :24) // this.GetAllFilterProduct(currentPageIndex, CategoryName) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :19) // View(this.GetAllFilterProduct(currentPageIndex, CategoryName)) (InvocationExpression)
return %6 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :51 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetAllFilterProduct(i32, none), it contains poisonous unsupported syntaxes

// Skipping function GetAllCategory(), it contains poisonous unsupported syntaxes

// Skipping function GetProductDetail(none), it contains poisonous unsupported syntaxes

// Skipping function CheckUserProfileUpdated(none), it contains poisonous unsupported syntaxes

// Skipping function GetProductFilter(none, none, none, none), it contains poisonous unsupported syntaxes

func @_GrowMandi.Web.Controllers.ProductMasterController.GetProductList$int.string.string.string.string.string.string.int.int$(i32, none, none, none, none, none, none, i32, i32) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :8) {
^entry (%_counter : i32, %_Category : none, %_State : none, %_Search : none, %_CompanyName : none, %_Sort : none, %_CropName : none, %_MinPrice : i32, %_MaxPrice : i32):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :41)
cbde.store %_counter, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :41)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :54)
cbde.store %_Category, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :54)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :76)
cbde.store %_State, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :76)
%3 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :95)
cbde.store %_Search, %3 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :95)
%4 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :115)
cbde.store %_CompanyName, %4 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :115)
%5 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :140)
cbde.store %_Sort, %5 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :140)
%6 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :158)
cbde.store %_CropName, %6 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :158)
%7 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :178)
cbde.store %_MinPrice, %7 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :178)
%8 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :194)
cbde.store %_MaxPrice, %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :224 :194)
br ^0

^0: // BinaryBranchBlock
%9 = constant 6 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :226 :23)
%10 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :226 :16) // take
cbde.store %9, %10 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :226 :16)
%11 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :227 :23)
%12 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :227 :16) // skip
cbde.store %11, %12 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :227 :16)
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :228 :16) // Not a variable of known type: Category
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :228 :28) // "0" (StringLiteralExpression)
%15 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :228 :16) // comparison of unknown type: Category == "0"
cond_br %15, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :228 :16)

^1: // SimpleBlock
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :230 :27) // "N/A" (StringLiteralExpression)
br ^2

^2: // BinaryBranchBlock
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :232 :16) // Not a variable of known type: State
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :232 :25) // "0" (StringLiteralExpression)
%19 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :232 :16) // comparison of unknown type: State == "0"
cond_br %19, ^3, ^4 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :232 :16)

^3: // SimpleBlock
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :234 :24) // "N/A" (StringLiteralExpression)
br ^4

^4: // BinaryBranchBlock
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :236 :16) // Not a variable of known type: Search
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :236 :26) // "0" (StringLiteralExpression)
%23 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :236 :16) // comparison of unknown type: Search == "0"
cond_br %23, ^5, ^6 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :236 :16)

^5: // SimpleBlock
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :238 :25) // "N/A" (StringLiteralExpression)
br ^6

^6: // BinaryBranchBlock
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :241 :16) // Not a variable of known type: CompanyName
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :241 :31) // "0" (StringLiteralExpression)
%27 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :241 :16) // comparison of unknown type: CompanyName == "0"
cond_br %27, ^7, ^8 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :241 :16)

^7: // SimpleBlock
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :243 :30) // "N/A" (StringLiteralExpression)
br ^8

^8: // JumpBlock
%29 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :23) // Not a variable of known type: ObjIProductService
%30 = cbde.load %10 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :60)
%31 = cbde.load %12 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :66)
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :72) // Not a variable of known type: Category
%33 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :82) // Not a variable of known type: State
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :89) // Not a variable of known type: Search
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :97) // Not a variable of known type: CompanyName
%36 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :110) // Not a variable of known type: Sort
%37 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :116) // Not a variable of known type: CropName
%38 = cbde.load %7 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :126)
%39 = cbde.load %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :136)
%40 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :246 :23) // ObjIProductService.GetAllProductList(take, skip, Category, State, Search, CompanyName, Sort, CropName, MinPrice, MaxPrice) (InvocationExpression)
// Entity from another assembly: Json
%42 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :250 :36) // Not a variable of known type: list
// Entity from another assembly: JsonRequestBehavior
%43 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :250 :42) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :250 :31) // Json(list, JsonRequestBehavior.AllowGet) (InvocationExpression)
%46 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :251 :12) // Not a variable of known type: returnResult
%47 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :251 :12) // returnResult.MaxJsonLength (SimpleMemberAccessExpression)
%48 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :251 :41) // int (PredefinedType)
%49 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :251 :41) // int.MaxValue (SimpleMemberAccessExpression)
%50 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :252 :19) // Not a variable of known type: returnResult
return %50 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :252 :12)

^9: // ExitBlock
cbde.unreachable

}
// Skipping function GetSubCategoriesProductFilter(none, none, none, none, none), it contains poisonous unsupported syntaxes

func @_GrowMandi.Web.Controllers.ProductMasterController.GetSubCategoryProductList$int.string.string.string.string$(i32, none, none, none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :8) {
^entry (%_counter : i32, %_Category : none, %_State : none, %_Search : none, %_Sort : none):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :52)
cbde.store %_counter, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :52)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :65)
cbde.store %_Category, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :65)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :87)
cbde.store %_State, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :87)
%3 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :106)
cbde.store %_Search, %3 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :106)
%4 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :126)
cbde.store %_Sort, %4 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :319 :126)
br ^0

^0: // BinaryBranchBlock
%5 = constant 8 : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :321 :23)
%6 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :321 :16) // take
cbde.store %5, %6 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :321 :16)
%7 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :322 :23)
%8 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :322 :16) // skip
cbde.store %7, %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :322 :16)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :323 :16) // Not a variable of known type: Category
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :323 :28) // "0" (StringLiteralExpression)
%11 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :323 :16) // comparison of unknown type: Category == "0"
cond_br %11, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :323 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :325 :27) // "N/A" (StringLiteralExpression)
br ^2

^2: // BinaryBranchBlock
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :327 :16) // Not a variable of known type: State
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :327 :25) // "0" (StringLiteralExpression)
%15 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :327 :16) // comparison of unknown type: State == "0"
cond_br %15, ^3, ^4 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :327 :16)

^3: // SimpleBlock
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :329 :24) // "N/A" (StringLiteralExpression)
br ^4

^4: // BinaryBranchBlock
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :331 :16) // Not a variable of known type: Search
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :331 :26) // "0" (StringLiteralExpression)
%19 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :331 :16) // comparison of unknown type: Search == "0"
cond_br %19, ^5, ^6 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :331 :16)

^5: // SimpleBlock
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :333 :25) // "N/A" (StringLiteralExpression)
br ^6

^6: // JumpBlock
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :23) // Not a variable of known type: ObjIProductService
%22 = cbde.load %6 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :68)
%23 = cbde.load %8 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :74)
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :80) // Not a variable of known type: Category
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :90) // Not a variable of known type: State
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :97) // Not a variable of known type: Search
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :105) // Not a variable of known type: Sort
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :338 :23) // ObjIProductService.GetSubCategoryProductList(take, skip, Category, State, Search, Sort) (InvocationExpression)
// Entity from another assembly: Json
%30 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :342 :36) // Not a variable of known type: list
// Entity from another assembly: JsonRequestBehavior
%31 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :342 :42) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :342 :31) // Json(list, JsonRequestBehavior.AllowGet) (InvocationExpression)
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :343 :12) // Not a variable of known type: returnResult
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :343 :12) // returnResult.MaxJsonLength (SimpleMemberAccessExpression)
%36 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :343 :41) // int (PredefinedType)
%37 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :343 :41) // int.MaxValue (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :344 :19) // Not a variable of known type: returnResult
return %38 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\ProductMasterController.cs" :344 :12)

^7: // ExitBlock
cbde.unreachable

}
