func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.CheckMobileNumberExits$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :28 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :28 :45)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :28 :45)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :30 :36) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :30 :70) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :30 :36) // objICommon.CheckMobileNumberExits(mobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :31 :19) // Not a variable of known type: checkMobileNumber
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :31 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.CheckExistingMobileNumber$string$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :33 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :33 :46)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :33 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :35 :19) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :35 :56) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :35 :19) // objICommon.CheckExistingMobileNumber(mobileNumber) (InvocationExpression)
return %3 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.CheckExistingMobileNumberforLogin$string$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :38 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :38 :54)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :38 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :40 :19) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :40 :64) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :40 :19) // objICommon.CheckExistingMobileNumberforLogin(mobileNumber) (InvocationExpression)
return %3 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.CheckOTPForLogin$GrowIndigo.DAL.DataModels.CommonModels.LoginViewModel$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :43 :8) {
^entry (%_objLoginViewModel : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :43 :47)
cbde.store %_objLoginViewModel, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :43 :47)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :45 :67) // new Shop_Retailer_UserMaster() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :46 :12) // Not a variable of known type: objShop_Retailer_UserMaster
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :46 :12) // objShop_Retailer_UserMaster.mobile_number (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :46 :56) // Not a variable of known type: objLoginViewModel
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :46 :56) // objLoginViewModel.MobileNumber (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :47 :12) // Not a variable of known type: objShop_Retailer_UserMaster
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :47 :12) // objShop_Retailer_UserMaster.User_pwd (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :47 :51) // Not a variable of known type: objLoginViewModel
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :47 :51) // objLoginViewModel.OTP (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :48 :23) // Not a variable of known type: objICommon
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :48 :51) // Not a variable of known type: objShop_Retailer_UserMaster
%13 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :48 :23) // objICommon.CheckOTPForLogin(objShop_Retailer_UserMaster) (InvocationExpression)
%14 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :48 :16) // user
cbde.store %13, %14 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :48 :16)
%15 = cbde.load %14 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :49 :16)
cond_br %15, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :49 :16)

^1: // BinaryBranchBlock
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :51 :53) // new LoginViewModel() (ObjectCreationExpression)
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :52 :20) // Not a variable of known type: objLoginViewModel
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :52 :20) // objLoginViewModel.MobileNumber (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :52 :54) // null (NullLiteralExpression)
%21 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :52 :20) // comparison of unknown type: objLoginViewModel.MobileNumber != null
cond_br %21, ^3, ^4 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :52 :20)

^3: // JumpBlock
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :54 :42) // new LoginViewModel                      {                          MobileNumber = objLoginViewModel.MobileNumber                      } (ObjectCreationExpression)
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :56 :39) // Not a variable of known type: objLoginViewModel
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :56 :39) // objLoginViewModel.MobileNumber (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :58 :27) // Not a variable of known type: objUserDetailsModel
return %25 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :58 :20)

^4: // JumpBlock
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :62 :27) // null (NullLiteralExpression)
return %26 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :62 :20)

^2: // JumpBlock
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :68 :23) // null (NullLiteralExpression)
return %27 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :68 :16)

^5: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.CheckExistingMobileNumberForLogin$string$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :73 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :73 :54)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :73 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :75 :19) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :75 :64) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :75 :19) // objICommon.CheckExistingMobileNumberForLogin(mobileNumber) (InvocationExpression)
return %3 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :75 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function BindAllState(), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.GetAddressForUser$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :93 :8) {
^entry (%_MobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :93 :61)
cbde.store %_MobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :93 :61)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :95 :35) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :95 :64) // Not a variable of known type: MobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :95 :35) // objICommon.GetAddressForUser(MobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :96 :19) // Not a variable of known type: getAddressDetail
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :96 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.GetCartDetails$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :99 :8) {
^entry (%_MobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :99 :50)
cbde.store %_MobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :99 :50)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :101 :33) // Not a variable of known type: objICommon
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :101 :59) // Not a variable of known type: MobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :101 :33) // objICommon.GetCartDetails(MobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :102 :19) // Not a variable of known type: getCartDetails
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :102 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.Common.CommonService.GetCompanyProduct$$() -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :105 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :107 :36) // Not a variable of known type: objICommon
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :107 :36) // objICommon.GetCompanyProduct() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :109 :19) // Not a variable of known type: getCompanyProduct
return %3 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\Common\\CommonService.cs" :109 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetAllStatewithProduct(), it contains poisonous unsupported syntaxes

