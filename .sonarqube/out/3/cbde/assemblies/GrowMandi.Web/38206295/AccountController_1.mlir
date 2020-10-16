func @_GrowMandi.Web.Controllers.AccountController.Index$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :41 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :44 :19) // View() (InvocationExpression)
return %0 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :44 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UserRegistration(none), it contains poisonous unsupported syntaxes

// Skipping function UserLoginVerifyMobileNumber(none), it contains poisonous unsupported syntaxes

func @_GrowMandi.Web.Controllers.AccountController.CheckOTPForLogin$GrowIndigo.DAL.DataModels.CommonModels.LoginViewModel.string$(none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :164 :8) {
^entry (%_model : none, %_ReturnUrl : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :165 :43)
cbde.store %_model, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :165 :43)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :165 :65)
cbde.store %_ReturnUrl, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :165 :65)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :169 :23) // Not a variable of known type: ObjICommonServices
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :169 :59) // Not a variable of known type: model
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :169 :23) // ObjICommonServices.CheckOTPForLogin(model) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :170 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :170 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :170 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :170 :16)

^1: // BinaryBranchBlock
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :172 :16) // Identifier from another assembly: Session
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :172 :24) // "LoggedInUser" (StringLiteralExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :172 :16) // Session["LoggedInUser"] (ElementAccessExpression)
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :172 :42) // Not a variable of known type: user
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :173 :27) // Identifier from another assembly: TempData
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :173 :36) // "Product" (StringLiteralExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :173 :27) // TempData["Product"] (ElementAccessExpression)
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :174 :20) // Not a variable of known type: temp
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :174 :28) // null (NullLiteralExpression)
%19 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :174 :20) // comparison of unknown type: temp != null
cond_br %19, ^3, ^4 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :174 :20)

^3: // BinaryBranchBlock
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :176 :24) // Not a variable of known type: temp
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :176 :24) // temp.ToString() (InvocationExpression)
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :176 :43) // "ProductDetail" (StringLiteralExpression)
%23 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :176 :24) // comparison of unknown type: temp.ToString() == "ProductDetail"
cond_br %23, ^5, ^6 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :176 :24)

^5: // JumpBlock
// Entity from another assembly: Json
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :178 :36) // "productPage" (StringLiteralExpression)
// Entity from another assembly: JsonRequestBehavior
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :178 :51) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :178 :31) // Json("productPage", JsonRequestBehavior.AllowGet) (InvocationExpression)
return %26 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :178 :24)

^6: // JumpBlock
// Entity from another assembly: Json
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :182 :36) // "true" (StringLiteralExpression)
// Entity from another assembly: JsonRequestBehavior
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :182 :44) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :182 :31) // Json("true", JsonRequestBehavior.AllowGet) (InvocationExpression)
return %29 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :182 :24)

^4: // JumpBlock
// Entity from another assembly: Json
%30 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :188 :32) // "true" (StringLiteralExpression)
// Entity from another assembly: JsonRequestBehavior
%31 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :188 :40) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :188 :27) // Json("true", JsonRequestBehavior.AllowGet) (InvocationExpression)
return %32 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :188 :20)

^2: // BinaryBranchBlock
%33 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :20) // Identifier from another assembly: TempData
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :29) // "ReturnAction" (StringLiteralExpression)
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :20) // TempData["ReturnAction"] (ElementAccessExpression)
%36 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :48) // null (NullLiteralExpression)
%37 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :20) // comparison of unknown type: TempData["ReturnAction"] != null
cond_br %37, ^7, ^8 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :195 :20)

^7: // JumpBlock
// Entity from another assembly: Json
%38 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :197 :32) // "productPage" (StringLiteralExpression)
// Entity from another assembly: JsonRequestBehavior
%39 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :197 :47) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :197 :27) // Json("productPage", JsonRequestBehavior.AllowGet) (InvocationExpression)
return %40 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :197 :20)

^8: // JumpBlock
// Entity from another assembly: Json
%41 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :201 :32) // "false" (StringLiteralExpression)
// Entity from another assembly: JsonRequestBehavior
%42 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :201 :41) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :201 :27) // Json("false", JsonRequestBehavior.AllowGet) (InvocationExpression)
return %43 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :201 :20)

^9: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.AccountController.CheckMobileNumber$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :257 :8) {
^entry (%_MobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :258 :44)
cbde.store %_MobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :258 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :261 :25) // Not a variable of known type: ObjICommonServices
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :261 :70) // Not a variable of known type: MobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :261 :25) // ObjICommonServices.CheckExistingMobileNumber(MobileNumber) (InvocationExpression)
%4 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :261 :16) // result
cbde.store %3, %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :261 :16)
%5 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :262 :16)
cond_br %5, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :262 :16)

^1: // JumpBlock
// Entity from another assembly: Json
%6 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :265 :28)
// Entity from another assembly: JsonRequestBehavior
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :265 :36) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :265 :23) // Json(result, JsonRequestBehavior.AllowGet) (InvocationExpression)
return %8 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :265 :16)

^2: // SimpleBlock
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :269 :16) // Identifier from another assembly: ModelState
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :269 :41) // "please " (StringLiteralExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :269 :52) // "try again" (StringLiteralExpression)
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :269 :16) // ModelState.AddModelError("please ", "try again") (InvocationExpression)
br ^3

^3: // JumpBlock
// Entity from another assembly: Json
// Entity from another assembly: JsonRequestBehavior
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :271 :24) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :271 :19) // Json(JsonRequestBehavior.AllowGet) (InvocationExpression)
return %14 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :271 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.AccountController.CheckMobileNumberForLogin$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :279 :8) {
^entry (%_MobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :280 :52)
cbde.store %_MobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :280 :52)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :283 :25) // Not a variable of known type: ObjICommonServices
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :283 :70) // Not a variable of known type: MobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :283 :25) // ObjICommonServices.CheckExistingMobileNumber(MobileNumber) (InvocationExpression)
%4 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :283 :16) // result
cbde.store %3, %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :283 :16)
%5 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :284 :16)
cond_br %5, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :284 :16)

^1: // JumpBlock
// Entity from another assembly: Json
%6 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :287 :28)
// Entity from another assembly: JsonRequestBehavior
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :287 :36) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :287 :23) // Json(result, JsonRequestBehavior.AllowGet) (InvocationExpression)
return %8 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :287 :16)

^2: // SimpleBlock
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :291 :16) // Identifier from another assembly: ModelState
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :291 :41) // "please " (StringLiteralExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :291 :52) // "try again" (StringLiteralExpression)
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :291 :16) // ModelState.AddModelError("please ", "try again") (InvocationExpression)
br ^3

^3: // JumpBlock
// Entity from another assembly: Json
// Entity from another assembly: JsonRequestBehavior
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :293 :24) // JsonRequestBehavior.AllowGet (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :293 :19) // Json(JsonRequestBehavior.AllowGet) (InvocationExpression)
return %14 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :293 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_GrowMandi.Web.Controllers.AccountController.LogOut$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :304 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :306 :12) // Identifier from another assembly: Session
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :306 :12) // Session.Abandon() (InvocationExpression)
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :307 :12) // Identifier from another assembly: Session
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :307 :12) // Session.Clear() (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :308 :12) // Identifier from another assembly: Session
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :308 :12) // Session.RemoveAll() (InvocationExpression)
// Entity from another assembly: FormsAuthentication
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :309 :12) // FormsAuthentication.SignOut() (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :310 :16) // Not a variable of known type: LoggedInUser
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :310 :32) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :310 :16) // comparison of unknown type: LoggedInUser == null
cond_br %9, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :310 :16)

^1: // JumpBlock
// Entity from another assembly: RedirectToAction
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :313 :40) // "Index" (StringLiteralExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :313 :49) // "Home" (StringLiteralExpression)
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :313 :23) // RedirectToAction("Index", "Home") (InvocationExpression)
return %12 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :313 :16)

^2: // JumpBlock
// Entity from another assembly: RedirectToAction
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :319 :40) // "Index" (StringLiteralExpression)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :319 :49) // "Home" (StringLiteralExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :319 :23) // RedirectToAction("Index", "Home") (InvocationExpression)
return %15 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowMandi.Web\\Controllers\\AccountController.cs" :319 :16)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function UpdateUserProfile(none), it contains poisonous unsupported syntaxes

// Skipping function UpdateUserProfile(none, none), it contains poisonous unsupported syntaxes

