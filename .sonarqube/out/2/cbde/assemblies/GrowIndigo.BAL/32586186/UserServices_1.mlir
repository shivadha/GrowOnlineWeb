// Skipping function AddUser(none), it contains poisonous unsupported syntaxes

// Skipping function AddUserOtp(none), it contains poisonous unsupported syntaxes

// Skipping function CheckOtpFromDb(none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.User.UserServices.CheckUserProfileUpdated$string$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :112 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :112 :44)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :112 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :114 :41) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :114 :74) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :114 :41) // objIUser.CheckUserProfileUpdated(mobileNumber) (InvocationExpression)
%4 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :114 :16) // checkuserProfileUpdate
cbde.store %3, %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :114 :16)
%5 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :115 :19)
return %5 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :115 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.GetCartDetailByMobileNumber$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :118 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :118 :63)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :118 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :120 :41) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :120 :78) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :120 :41) // objIUser.GetCartDetailByMobileNumber(mobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :121 :19) // Not a variable of known type: checkuserProfileUpdate
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :121 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.DeleteCartProduct$long$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :124 :8) {
^entry (%_Id : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :124 :38)
cbde.store %_Id, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :124 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :126 :36) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :126 :63) // Not a variable of known type: Id
%3 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :126 :36) // objIUser.DeleteCartProduct(Id) (InvocationExpression)
%4 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :126 :16) // deleteCartProduct
cbde.store %3, %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :126 :16)
%5 = cbde.load %4 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :127 :19)
return %5 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :127 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.GetuserInfo$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :132 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :132 :52)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :132 :52)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :134 :30) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :134 :51) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :134 :30) // objIUser.GetuserInfo(mobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :135 :19) // Not a variable of known type: getUserInfo
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :135 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UpdateUserProfile(none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.User.UserServices.AddAddreessForUser$GrowIndigo.DAL.DataModels.MandiModels.ShippingAddressViewModel$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :188 :8) {
^entry (%_objShippingAddressViewModel : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :188 :39)
cbde.store %_objShippingAddressViewModel, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :188 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :190 :61) // new Shop_Shipping_address() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :191 :12) // Not a variable of known type: objShop_Shipping_address
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :191 :12) // objShop_Shipping_address.reciver_name (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :191 :52) // Not a variable of known type: objShippingAddressViewModel
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :191 :52) // objShippingAddressViewModel.reciver_name (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :192 :12) // Not a variable of known type: objShop_Shipping_address
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :192 :12) // objShop_Shipping_address.retailer_mobile (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :192 :55) // Not a variable of known type: objShippingAddressViewModel
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :192 :55) // objShippingAddressViewModel.retailer_mobile (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :193 :12) // Not a variable of known type: objShop_Shipping_address
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :193 :12) // objShop_Shipping_address.ship_address (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :193 :52) // Not a variable of known type: objShippingAddressViewModel
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :193 :52) // objShippingAddressViewModel.ship_address (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :194 :12) // Not a variable of known type: objShop_Shipping_address
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :194 :12) // objShop_Shipping_address.city (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :194 :44) // Not a variable of known type: objShippingAddressViewModel
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :194 :44) // objShippingAddressViewModel.city (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :195 :12) // Not a variable of known type: objShop_Shipping_address
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :195 :12) // objShop_Shipping_address.pincode (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :195 :47) // Not a variable of known type: objShippingAddressViewModel
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :195 :47) // objShippingAddressViewModel.pincode (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :196 :12) // Not a variable of known type: objShop_Shipping_address
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :196 :12) // objShop_Shipping_address.retailer_id (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :196 :51) // "12345" (StringLiteralExpression)
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :197 :12) // Not a variable of known type: objShop_Shipping_address
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :197 :12) // objShop_Shipping_address.ship_mobile (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :197 :51) // Not a variable of known type: objShippingAddressViewModel
%29 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :197 :51) // objShippingAddressViewModel.ship_mobile (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :198 :12) // Not a variable of known type: objShop_Shipping_address
%31 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :198 :12) // objShop_Shipping_address.landline_number (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :198 :55) // Not a variable of known type: objShippingAddressViewModel
%33 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :198 :55) // objShippingAddressViewModel.landline_number (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :199 :12) // Not a variable of known type: objShop_Shipping_address
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :199 :12) // objShop_Shipping_address.tr_date (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%36 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :199 :47) // DateTime.Now (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :200 :27) // Not a variable of known type: objIUser
%38 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :200 :55) // Not a variable of known type: objShop_Shipping_address
%39 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :200 :27) // objIUser.AddAddreessForUser(objShop_Shipping_address) (InvocationExpression)
%40 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :200 :16) // adddress
cbde.store %39, %40 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :200 :16)
%41 = cbde.load %40 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :201 :19)
return %41 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :201 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddOrderDetails(none, none, none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.BAL.BussinessServices.User.UserServices.UpdateOrderDeatils$GrowIndigo.DAL.DataModels.Order.OrderViewModel$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :255 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :255 :39)
cbde.store %_model, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :255 :39)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :258 :55) // new Shop_Order_Details() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :259 :12) // Not a variable of known type: objShop_Order_Details
%4 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :259 :12) // objShop_Order_Details.order_id (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :259 :45) // Not a variable of known type: model
%6 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :259 :45) // model.Order_Id (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :260 :31) // Not a variable of known type: objIUser
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :260 :64) // Not a variable of known type: objShop_Order_Details
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :260 :31) // objIUser.GetOrderDetailByOrderId(objShop_Order_Details) (InvocationExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :261 :16) // Not a variable of known type: getOrderIndo
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :261 :32) // null (NullLiteralExpression)
%13 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :261 :16) // comparison of unknown type: getOrderIndo != null
cond_br %13, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :261 :16)

^1: // JumpBlock
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :263 :16) // Not a variable of known type: getOrderIndo
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :263 :16) // getOrderIndo.rzp_order_id (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :263 :44) // Not a variable of known type: model
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :263 :44) // model.rzp_order_id (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :264 :16) // Not a variable of known type: getOrderIndo
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :264 :16) // getOrderIndo.rzp_payment_id (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :264 :46) // Not a variable of known type: model
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :264 :46) // model.rzp_payment_id (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :265 :16) // Not a variable of known type: getOrderIndo
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :265 :16) // getOrderIndo.rzp_payment_status (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :265 :50) // Not a variable of known type: model
%25 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :265 :50) // model.rzp_payment_status (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :266 :16) // Not a variable of known type: getOrderIndo
%27 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :266 :16) // getOrderIndo.order_status (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :266 :44) // Not a variable of known type: model
%29 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :266 :44) // model.order_status (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :267 :16) // Not a variable of known type: getOrderIndo
%31 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :267 :16) // getOrderIndo.rzp_payment_status (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :267 :50) // Not a variable of known type: model
%33 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :267 :50) // model.rzp_payment_status (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :269 :29) // Not a variable of known type: objIUser
%35 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :269 :57) // Not a variable of known type: getOrderIndo
%36 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :269 :29) // objIUser.UpdateOrderDetails(getOrderIndo) (InvocationExpression)
%37 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :269 :20) // result
cbde.store %36, %37 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :269 :20)
%38 = cbde.load %37 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :270 :23)
return %38 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :270 :16)

^2: // JumpBlock
%39 = constant 0 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :274 :23) // false
return %39 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :274 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.DeleteCartProducts$string$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :280 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :280 :39)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :280 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :282 :46) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :282 :79) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :282 :46) // objIUser.GetAllCartProductDetail(mobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :283 :35) // Not a variable of known type: objIUser
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :283 :66) // Not a variable of known type: getAllProductByMobileNumber
%7 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :283 :35) // objIUser.DeleteAllCartProducts(getAllProductByMobileNumber) (InvocationExpression)
%8 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :283 :16) // deleteCartValues
cbde.store %7, %8 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :283 :16)
%9 = cbde.load %8 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :284 :19)
return %9 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :284 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.GetOrderHistory$string$(none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :299 :8) {
^entry (%_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :299 :57)
cbde.store %_mobileNumber, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :299 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :301 :48) // Not a variable of known type: objIUser
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :301 :73) // Not a variable of known type: mobileNumber
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :301 :48) // objIUser.GetOrderHistory(mobileNumber) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :302 :19) // Not a variable of known type: getOrderDetailsByMobileNumber
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :302 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.GetOrderList$GrowIndigo.DAL.DataModels.CommonModels.DTParameterModel.string$(none, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :306 :9) {
^entry (%_criteria : none, %_mobileNumber : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :307 :9)
cbde.store %_criteria, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :307 :9)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :307 :36)
cbde.store %_mobileNumber, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :307 :36)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :19) // this (ThisExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :19) // this.objIUser (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :46) // Not a variable of known type: criteria
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :56) // Not a variable of known type: mobileNumber
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :19) // this.objIUser.GetOrderList(criteria, mobileNumber) (InvocationExpression)
return %6 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :309 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.Addcontact$GrowIndigo.DAL.DataModels.Contact.ContactViewModel$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :313 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :313 :31)
cbde.store %_model, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :313 :31)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :315 :47) // new shop_ContactUs() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :316 :12) // Not a variable of known type: objshop_ContactUs
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :316 :12) // objshop_ContactUs.Name (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :316 :37) // Not a variable of known type: model
%6 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :316 :37) // model.Name (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :317 :12) // Not a variable of known type: objshop_ContactUs
%8 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :317 :12) // objshop_ContactUs.Subject (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :317 :40) // Not a variable of known type: model
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :317 :40) // model.Subject (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :318 :12) // Not a variable of known type: objshop_ContactUs
%12 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :318 :12) // objshop_ContactUs.Email (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :318 :38) // Not a variable of known type: model
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :318 :38) // model.Email (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :319 :12) // Not a variable of known type: objshop_ContactUs
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :319 :12) // objshop_ContactUs.Message (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :319 :40) // Not a variable of known type: model
%18 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :319 :40) // model.Message (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :320 :12) // Not a variable of known type: objshop_ContactUs
%20 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :320 :12) // objshop_ContactUs.MobileNumber (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :320 :45) // Not a variable of known type: model
%22 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :320 :45) // model.MobileNumber (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :321 :23) // Not a variable of known type: objIUser
%24 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :321 :43) // Not a variable of known type: objshop_ContactUs
%25 = cbde.unknown : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :321 :23) // objIUser.Addcontact(objshop_ContactUs) (InvocationExpression)
%26 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :321 :14) // result
cbde.store %25, %26 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :321 :14)
%27 = cbde.load %26 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :322 :19)
return %27 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :322 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_GrowIndigo.BAL.BussinessServices.User.UserServices.GetOrderDetailByOrderId$int$(i32) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :325 :8) {
^entry (%_orderId : i32):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :325 :58)
cbde.store %_orderId, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :325 :58)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :327 :33) // Not a variable of known type: objIUser
%2 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :327 :66)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :327 :33) // objIUser.GetOrderDetailByOrderId(orderId) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :328 :19) // Not a variable of known type: getOrderDetail
return %5 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.BAL\\BussinessServices\\User\\UserServices.cs" :328 :12)

^1: // ExitBlock
cbde.unreachable

}
