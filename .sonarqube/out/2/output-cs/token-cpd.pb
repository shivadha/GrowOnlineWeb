�
[E:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\App_Start\UnityConfig.cs
	namespace 	

GrowIndigo
 
. 
BAL 
{ 
public 

static 
class 
UnityConfig #
{ 
public		 
static		 
void		 
RegisterComponents		 -
(		- .
)		. /
{

 	
var 
	container 
= 
new 
UnityContainer %
(% &
)& '
;' (
DependencyResolver 
. 
SetResolver *
(* +
new+ .#
UnityDependencyResolver/ F
(F G
	containerG P
)P Q
)Q R
;R S
} 	
} 
} �<
lE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Common\CommonService.cs
	namespace 	

GrowIndigo
 
. 
BAL 
. 
BussinessServices *
.* +
Common+ 1
{ 
public 

class 
CommonService 
:  
ICommonService! /
{ 
private 
ICommonRepository !

objICommon" ,
=- .
null/ 3
;3 4
public 
CommonService 
( 
ICommonRepository .!
_objICommonRepository/ D
)D E
{ 	

objICommon 
= !
_objICommonRepository .
;. /
} 	
public 
string "
CheckMobileNumberExits ,
(, -
string- 3
mobileNumber4 @
=A B
$strC E
)E F
{ 	
var 
checkMobileNumber !
=" #

objICommon$ .
.. /"
CheckMobileNumberExits/ E
(E F
mobileNumberF R
)R S
;S T
return   
checkMobileNumber   $
;  $ %
}!! 	
public"" 
bool"" %
CheckExistingMobileNumber"" -
(""- .
string"". 4
mobileNumber""5 A
)""A B
{## 	
return$$ 

objICommon$$ 
.$$ %
CheckExistingMobileNumber$$ 7
($$7 8
mobileNumber$$8 D
)$$D E
;$$E F
}%% 	
public'' 
bool'' -
!CheckExistingMobileNumberforLogin'' 5
(''5 6
string''6 <
mobileNumber''= I
)''I J
{(( 	
return)) 

objICommon)) 
.)) -
!CheckExistingMobileNumberforLogin)) ?
())? @
mobileNumber))@ L
)))L M
;))M N
}** 	
public,, 
LoginViewModel,, 
CheckOTPForLogin,, .
(,,. /
LoginViewModel,,/ =
objLoginViewModel,,> O
),,O P
{-- 	$
Shop_Retailer_UserMaster.. $'
objShop_Retailer_UserMaster..% @
=..A B
new..C F$
Shop_Retailer_UserMaster..G _
(.._ `
)..` a
;..a b'
objShop_Retailer_UserMaster// '
.//' (
mobile_number//( 5
=//6 7
objLoginViewModel//8 I
.//I J
MobileNumber//J V
;//V W'
objShop_Retailer_UserMaster00 '
.00' (
User_pwd00( 0
=001 2
objLoginViewModel003 D
.00D E
OTP00E H
;00H I
var11 
user11 
=11 

objICommon11 !
.11! "
CheckOTPForLogin11" 2
(112 3'
objShop_Retailer_UserMaster113 N
)11N O
;11O P
if22 
(22 
user22 
)22 
{33 
LoginViewModel44 
objUserDetailsModel44 2
=443 4
new445 8
LoginViewModel449 G
(44G H
)44H I
;44I J
if55 
(55 
objLoginViewModel55 %
.55% &
MobileNumber55& 2
!=553 5
null556 :
)55: ;
{66 
objUserDetailsModel77 '
=77( )
new77* -
LoginViewModel77. <
{88 
MobileNumber99 $
=99% &
objLoginViewModel99' 8
.998 9
MobileNumber999 E
}:: 
;:: 
return;; 
objUserDetailsModel;; .
;;;. /
}<< 
else== 
{>> 
return?? 
null?? 
;??  
}@@ 
}BB 
elseCC 
{DD 
returnEE 
nullEE 
;EE 
}FF 
}HH 	
publicJJ 
boolJJ -
!CheckExistingMobileNumberForLoginJJ 5
(JJ5 6
stringJJ6 <
mobileNumberJJ= I
)JJI J
{KK 	
returnLL 

objICommonLL 
.LL -
!CheckExistingMobileNumberForLoginLL ?
(LL? @
mobileNumberLL@ L
)LLL M
;LLM N
}MM 	
publicNN 
ListNN 
<NN 
SelectListItemNN "
>NN" #
BindAllStateNN$ 0
(NN0 1
)NN1 2
{OO 	
tryPP 
{QQ 
varRR 
countrylistRR 
=RR  !

objICommonRR" ,
.RR, -
BindAllStateRR- 9
(RR9 :
)RR: ;
.RR; <
SelectRR< B
(RRB C
yRRC D
=>RRE G
newRRH K
SelectListItemRRL Z
{RR[ \
TextRR] a
=RRb c
yRRd e
.RRe f

state_discRRf p
,RRp q
ValueRRr w
=RRx y
yRRz {
.RR{ |

state_code	RR| �
.
RR� �
ToString
RR� �
(
RR� �
)
RR� �
}
RR� �
)
RR� �
.
RR� �
OrderBy
RR� �
(
RR� �
x
RR� �
=>
RR� �
x
RR� �
.
RR� �
Text
RR� �
)
RR� �
.
RR� �
ToList
RR� �
(
RR� �
)
RR� �
;
RR� �
returnTT 
countrylistTT "
??TT# %
nullTT& *
;TT* +
}UU 
catchVV 
(VV 
	ExceptionVV 
exVV 
)VV  
{WW 
throwXX 
exXX 
;XX 
}YY 
}ZZ 	
public^^ 
List^^ 
<^^ !
Shop_Shipping_address^^ )
>^^) *
GetAddressForUser^^+ <
(^^< =
string^^= C
MobileNumber^^D P
)^^P Q
{__ 	
var`` 
getAddressDetail``  
=``! "

objICommon``# -
.``- .
GetAddressForUser``. ?
(``? @
MobileNumber``@ L
)``L M
;``M N
returnaa 
getAddressDetailaa #
;aa# $
}bb 	
publicdd 
Listdd 
<dd 
Shop_CartInfodd !
>dd! "
GetCartDetailsdd# 1
(dd1 2
stringdd2 8
MobileNumberdd9 E
)ddE F
{ee 	
varff 
getCartDetailsff 
=ff  

objICommonff! +
.ff+ ,
GetCartDetailsff, :
(ff: ;
MobileNumberff; G
)ffG H
;ffH I
returngg 
getCartDetailsgg !
;gg! "
}hh 	
publicjj 
Listjj 
<jj 
Shop_Product_Masterjj '
>jj' (
GetCompanyProductjj( 9
(jj9 :
)jj: ;
{kk 	
varll 
getCompanyProductll !
=ll" #

objICommonll$ .
.ll. /
GetCompanyProductll/ @
(ll@ A
)llA B
;llB C
returnnn 
getCompanyProductnn $
;nn$ %
}rr 	
publicuu 
Listuu 
<uu 
Shop_State_Masteruu %
>uu% &"
GetAllStatewithProductuu' =
(uu= >
)uu> ?
{vv 	
tryww 
{xx 
varzz 
statezz 
=zz 

objICommonzz &
.zz& '"
GetAllStatewithProductzz' =
(zz= >
)zz> ?
;zz? @
return}} 
state}} 
;}} 
}~~ 
catch 
( 
	Exception 
ex 
)  
{
�� 
throw
�� 
ex
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
mE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Common\ICommonService.cs
	namespace

 	

GrowIndigo


 
.

 
BAL

 
.

 
BussinessServices

 *
.

* +
Common

+ 1
{ 
public 	
	interface
 
ICommonService "
{ 
string	 "
CheckMobileNumberExits &
(& '
string' -
mobileNumber. :
): ;
;; <
bool %
CheckExistingMobileNumber &
(& '
string' -
mobileNumber. :
): ;
;; <
List 
< 
SelectListItem 
> 
BindAllState )
() *
)* +
;+ ,
bool -
!CheckExistingMobileNumberForLogin .
(. /
string/ 5
mobileNumber6 B
)B C
;C D
LoginViewModel 
CheckOTPForLogin '
(' (
LoginViewModel( 6
objLoginViewModel7 H
)H I
;I J
bool -
!CheckExistingMobileNumberforLogin .
(. /
string/ 5
mobileNumber6 B
)B C
;C D
List 
< !
Shop_Shipping_address "
>" #
GetAddressForUser$ 5
(5 6
string6 <
MobileNumber= I
)I J
;J K
List 
< 
Shop_CartInfo 
> 
GetCartDetails *
(* +
string+ 1
MobileNumber2 >
)> ?
;? @
List 
< 
Shop_Product_Master  
>  !
GetCompanyProduct" 3
(3 4
)4 5
;5 6
List 
< 
Shop_State_Master 
> "
GetAllStatewithProduct  6
(6 7
)7 8
;8 9
} 
} �
kE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Order\IOrderService.cs
	namespace 	

GrowIndigo
 
. 
BAL 
. 
BussinessServices *
.* +
Order+ 0
{ 
public		 

	interface		 
IOrderService		 "
{

 
} 
} �
jE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Order\OrderService.cs
	namespace		 	

GrowIndigo		
 
.		 
BAL		 
.		 
BussinessServices		 *
.		* +
Order		+ 0
{

 
public 

class 
OrderService 
: 
IOrderService  -
{ 
private 
IOrderRepository  
	objIOrder! *
=+ ,
null- 1
;1 2
public 
OrderService 
( 
IOrderRepository ,

_objIOrder- 7
)7 8
{ 	
	objIOrder 
= 

_objIOrder "
;" #
} 	
}   
}!! �
oE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Product\IProductService.cs
	namespace

 	

GrowIndigo


 
.

 
BAL

 
.

 
BussinessServices

 *
.

* +
Product

+ 2
{ 
public 

	interface 
IProductService $
{ "
ProductMasterViewModel 
GetAllProduct ,
(, -
int- 0
currentPage1 <
,< =
string> D
CategoryNameE Q
=Q R
$strR T
)T U
;U V
Shop_Product_Master 
GetProductDetail ,
(, -
string- 3
	ProductId4 =
)= >
;> ?
bool 
AddOrderDetails 
( 
Shop_Product_Master 0
model1 6
,6 7
string8 >
mobileNumber? K
=L M
$strN P
)P Q
;Q R
bool 
CheckCartProduct 
( 
string $
	productId% .
=/ 0
$str1 3
,3 4
string5 ;
mobileNumber< H
=H I
$strI K
)K L
;L M
List 
< 
shop_catagory 
> 
GetAllCategory *
(* +
)+ ,
;, -
double  
CheckMinProductPrice #
(# $
)$ %
;% &
double  
CheckMaxProductPrice #
(# $
)$ %
;% &
List 
< "
ProductMasterViewModel #
># $%
GetSubCategoryProductList% >
(> ?
int? B
takeC G
,G H
intI L
skipM Q
,Q R
stringS Y

categoryidZ d
,d e
stringf l
stateidm t
,t u
stringv |

searchtext	} �
,
� �
string
� �
Sort
� �
=
� �
$str
� �
)
� �
;
� �
List 
< "
ProductMasterViewModel #
># $
GetAllProductList% 6
(6 7
int7 :
take; ?
,? @
intA D
skipE I
,I J
stringK Q

categoryidR \
,\ ]
string^ d
stateide l
,l m
stringn t

searchtextu 
,	 �
string
� �
CompanyName
� �
=
� �
$str
� �
,
� �
string
� �
Sort
� �
=
� �
$str
� �
,
� �
string
� �
CropName
� �
=
� �
$str
� �
,
� �
int
� �
MinPrice
� �
=
� �
$num
� �
,
� �
int
� �
MaxPrice
� �
=
� �
$num
� �
)
� �
;
� �
List 
< 
Shop_Product_Master  
>  !!
GetProductsbyCategory" 7
(7 8
string8 >
CategoryName? K
=L M
$strN P
,P Q
stringR X
CompanyNameY d
=e f
$strg i
,i j
stringk q
ProductNamer }
=~ 
$str
� �
,
� �
string
� �
	stateName
� �
=
� �
$str
� �
)
� �
;
� �
List 
< #
shop_manufacture_master $
>$ %(
GetManufactureDetailsProduct& B
(B C
)C D
;D E
} 
} �_
nE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\Product\ProductService.cs
	namespace 	

GrowIndigo
 
. 
BAL 
. 
BussinessServices *
.* +
Product+ 2
{ 
public 

class 
ProductService 
:  !
IProductService" 1
{ 
private 
IProductRepository "!
objIProductRepository# 8
=9 :
null; ?
;? @
public 
ProductService 
( 
IProductRepository 0"
_objIProductRepository1 G
)G H
{ 	!
objIProductRepository !
=" #"
_objIProductRepository$ :
;: ;
} 	
public "
ProductMasterViewModel %
GetAllProduct& 3
(3 4
int4 7
currentPage8 C
=D E
$numF G
,G H
stringI O
CategoryNameP \
=] ^
$str_ a
)a b
{ 	
try 
{ 
var!! 
productlist!! 
=!!  !!
objIProductRepository!!" 7
.!!7 8
GetAllProduct!!8 E
(!!E F
currentPage!!F Q
,!!Q R
CategoryName!!S _
)!!_ `
;!!` a
return"" 
productlist"" "
!=""# %
null""& *
?""+ ,
productlist""- 8
:""9 :
null""; ?
;""? @
}## 
catch$$ 
($$ 
	Exception$$ 
ex$$ 
)$$  
{%% 
throw&& 
ex&& 
;&& 
}'' 
}(( 	
public** 
List** 
<** 
shop_catagory** !
>**! "
GetAllCategory**# 1
(**1 2
)**2 3
{++ 	
try,, 
{-- 
var.. 
categorylist..  
=..! "!
objIProductRepository..# 8
...8 9
GetAllCategory..9 G
(..G H
)..H I
;..I J
return// 
categorylist// #
!=//$ &
null//' +
?//, -
categorylist//. :
://; <
null//= A
;//A B
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
throw33 
ex33 
;33 
}44 
}55 	
public77 
Shop_Product_Master77 "
GetProductDetail77# 3
(773 4
string774 :
	ProductId77; D
=77E F
$str77G I
)77I J
{88 	
var99 
getProductDetails99 !
=99" #!
objIProductRepository99$ 9
.999 :
GetProductDetail99: J
(99J K
	ProductId99K T
)99T U
;99U V
return:: 
getProductDetails:: $
;::$ %
};; 	
public== 
bool== 
AddOrderDetails== #
(==# $
Shop_Product_Master==$ 7
model==8 =
,=== >
string==? E
mobileNumber==F R
===S T
$str==U W
)==W X
{>> 	
Shop_CartInfo?? 
objShop_CartInfo?? *
=??+ ,
new??- 0
Shop_CartInfo??1 >
(??> ?
)??? @
;??@ A
objShop_CartInfo@@ 
.@@ 
	ProductId@@ &
=@@' (
model@@) .
.@@. /
pkSkuId@@/ 6
;@@6 7
objShop_CartInfoAA 
.AA  
RetailerMobileNumberAA 1
=AA2 3
mobileNumberAA4 @
;AA@ A
objShop_CartInfoBB 
.BB 
PriceBB "
=BB# $
modelBB% *
.BB* +
PriceBB+ 0
;BB0 1
objShop_CartInfoCC 
.CC 
ShippingChargeCC +
=CC, -
$numCC. /
.CC/ 0
ToStringCC0 8
(CC8 9
)CC9 :
;CC: ;
objShop_CartInfoDD 
.DD 

TotalPriceDD '
=DD( )

TotalPriceDD* 4
(DD4 5
objShop_CartInfoDD5 E
.DDE F
PriceDDF K
,DDK L
objShop_CartInfoDDM ]
.DD] ^
ShippingChargeDD^ l
)DDl m
.DDm n
ToStringDDn v
(DDv w
)DDw x
;DDx y
objShop_CartInfoEE 
.EE 

ProductGSTEE '
=EE( )
modelEE* /
.EE/ 0

GSTPercentEE0 :
;EE: ;
objShop_CartInfoFF 
.FF 
ProductNameFF (
=FF) *
modelFF+ 0
.FF0 1
SkuNameFF1 8
;FF8 9
objShop_CartInfoGG 
.GG 
ProductImageUrlGG ,
=GG- .
modelGG/ 4
.GG4 5
imageUrlGG5 =
;GG= >
objShop_CartInfoHH 
.HH 
ProductDescriptionHH /
=HH0 1
modelHH2 7
.HH7 8
DescriptionHH8 C
;HHC D
varLL 
addOrderDetailsLL 
=LL  !!
objIProductRepositoryLL" 7
.LL7 8
AddOrderDetailsLL8 G
(LLG H
objShop_CartInfoLLH X
)LLX Y
;LLY Z
returnMM 
addOrderDetailsMM "
;MM" #
}RR 	
publicTT 
ListTT 
<TT 
Shop_Product_MasterTT '
>TT' (!
GetProductsbyCategoryTT) >
(TT> ?
stringTT? E
CategoryNameTTF R
=TTS T
$strTTU W
,TTW X
stringTTY _
CompanyNameTT` k
=TTl m
$strTTn p
,TTp q
stringTTr x
ProductName	TTy �
=
TT� �
$str
TT� �
,
TT� �
string
TT� �
	stateName
TT� �
=
TT� �
$str
TT� �
)
TT� �
{UU 	
tryVV 
{WW 
varXX 
productlistXX 
=XX  !!
objIProductRepositoryXX" 7
.XX7 8!
GetProductsbyCategoryXX8 M
(XXM N
CategoryNameXXN Z
,XXZ [
CompanyNameXX\ g
,XXg h
ProductNameXXi t
,XXt u
	stateNameXXv 
)	XX �
;
XX� �
returnYY 
productlistYY "
!=YY# %
nullYY& *
?YY+ ,
productlistYY- 8
:YY9 :
nullYY; ?
;YY? @
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
throw]] 
ex]] 
;]] 
}^^ 
}__ 	
publicaa 
stringaa 

TotalPriceaa  
(aa  !
stringaa! '
Priceaa( -
,aa- .
stringaa/ 5
ShippingChargeaa6 D
)aaD E
{bb 	
decimalcc 
IPricecc 
=cc 
Convertcc $
.cc$ %
	ToDecimalcc% .
(cc. /
Pricecc/ 4
)cc4 5
;cc5 6
decimalee 

percentageee 
=ee  
Convertee! (
.ee( )
	ToDecimalee) 2
(ee2 3
ShippingChargeee3 A
)eeA B
/eeC D
$numeeE H
;eeH I
decimalgg 
IShippingPricegg "
=gg# $
IPricegg% +
*gg, -

percentagegg. 8
;gg8 9
decimalhh 

TotalPricehh 
=hh  
IPricehh! '
+hh( )
IShippingPricehh* 8
;hh8 9
returnii 

TotalPriceii 
.ii 
ToStringii &
(ii& '
)ii' (
;ii( )
}kk 	
publicmm 
boolmm 
CheckCartProductmm $
(mm$ %
stringmm% +
	productIdmm, 5
=mm6 7
$strmm8 :
,mm: ;
stringmm< B
mobileNumbermmC O
=mmP Q
$strmmR T
)mmT U
{nn 	
varoo 
checkProductInCartoo "
=oo# $!
objIProductRepositoryoo% :
.oo: ;
CheckCartProductoo; K
(ooK L
	productIdooL U
,ooU V
mobileNumberooW c
)ooc d
;ood e
returnpp 
checkProductInCartpp %
;pp% &
}qq 	
publicss 
Listss 
<ss "
ProductMasterViewModelss *
>ss* +
GetAllProductListss, =
(ss= >
intss> A
takessB F
,ssF G
intssH K
skipssL P
,ssP Q
stringssR X

categoryidssY c
,ssc d
stringsse k
stateidssl s
,sss t
stringssu {

searchtext	ss| �
,
ss� �
string
ss� �
CompanyName
ss� �
=
ss� �
$str
ss� �
,
ss� �
string
ss� �
sort
ss� �
=
ss� �
$str
ss� �
,
ss� �
string
ss� �
CropName
ss� �
=
ss� �
$str
ss� �
,
ss� �
int
ss� �
MinPrice
ss� �
=
ss� �
$num
ss� �
,
ss� �
int
ss� �
MaxPrice
ss� �
=
ss� �
$num
ss� �
)
ss� �
{tt 	
returnuu 
thisuu 
.uu !
objIProductRepositoryuu -
.uu- .
GetAllProductListuu. ?
(uu? @
takeuu@ D
,uuD E
skipuuF J
,uuJ K

categoryiduuL V
,uuV W
stateiduuX _
,uu_ `

searchtextuua k
,uuk l
CompanyNameuum x
,uux y
sortuuz ~
,uu~ 
CropName
uu� �
,
uu� �
MinPrice
uu� �
,
uu� �
MaxPrice
uu� �
)
uu� �
.
uu� �
ToList
uu� �
(
uu� �
)
uu� �
;
uu� �
}ww 	
publiczz 
Listzz 
<zz "
ProductMasterViewModelzz *
>zz* +%
GetSubCategoryProductListzz, E
(zzE F
intzzF I
takezzJ N
,zzN O
intzzP S
skipzzT X
,zzX Y
stringzzZ `

categoryidzza k
,zzk l
stringzzm s
stateidzzt {
,zz{ |
string	zz} �

searchtext
zz� �
,
zz� �
string
zz� �
sort
zz� �
=
zz� �
$str
zz� �
)
zz� �
{{{ 	
return|| 
this|| 
.|| !
objIProductRepository|| -
.||- .%
GetSubCategoryProductList||. G
(||G H
take||H L
,||L M
skip||N R
,||R S

categoryid||T ^
,||^ _
stateid||` g
,||g h

searchtext||i s
,||s t
sort||u y
)||y z
.||z {
ToList	||{ �
(
||� �
)
||� �
;
||� �
}~~ 	
public
�� 
List
�� 
<
�� %
shop_manufacture_master
�� +
>
��+ ,*
GetManufactureDetailsProduct
��- I
(
��I J
)
��J K
{
�� 	
var
�� 
getCompanyProduct
�� !
=
��" ##
objIProductRepository
��$ 9
.
��9 :*
GetManufactureDetailsProduct
��: V
(
��V W
)
��W X
;
��X Y
return
�� 
getCompanyProduct
�� $
;
��$ %
}
�� 	
public
�� 
double
�� "
CheckMinProductPrice
�� +
(
��+ ,
)
��, -
{
�� 	
var
��  
getminProductPrice
�� "
=
��# $#
objIProductRepository
��% :
.
��: ;"
CheckMinProductPrice
��; O
(
��O P
)
��P Q
;
��Q R
return
��  
getminProductPrice
�� %
;
��% &
}
�� 	
public
�� 
double
�� "
CheckMaxProductPrice
�� +
(
��+ ,
)
��, -
{
�� 	
var
��  
getMAxProductPrice
�� "
=
��# $#
objIProductRepository
��% :
.
��: ;"
CheckMaxProductPrice
��; O
(
��O P
)
��P Q
;
��Q R
return
��  
getMAxProductPrice
�� %
;
��% &
}
�� 	
}
�� 
}�� �
jE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\User\IUserServices.cs
	namespace 	

GrowIndigo
 
. 
BAL 
. 
BussinessServices *
.* +
User+ /
{ 
public 

	interface 
IUserServices "
{ 
Shop_Order_Details #
GetOrderDetailByOrderId 2
(2 3
int3 6
orderId7 >
=? @
$numA B
)B C
;C D
bool 
UpdateOrderDeatils 
(  
OrderViewModel  .
model/ 4
)4 5
;5 6
bool 

Addcontact 
( 
ContactViewModel (
model) .
). /
;/ 0
bool 
AddUser 
( 
UserInfoViewModel &
model' ,
), -
;- .
bool 

AddUserOtp 
( 
LoginViewModel &
model' ,
), -
;- .
List 
< 
Shop_CartInfo 
> '
GetCartDetailByMobileNumber 7
(7 8
string8 >
mobileNumber? K
)K L
;L M
bool 
CheckOtpFromDb 
( 
string "
Otp# &
)& '
;' (
bool #
CheckUserProfileUpdated $
($ %
string% +
mobileNumber, 8
=9 :
$str; =
)= >
;> ?$
Shop_Retailer_UserMaster  
GetuserInfo! ,
(, -
string- 3
mobileNumber4 @
=A B
$strC E
)E F
;F G
bool 
UpdateUserProfile 
( 
UpdateUserViewModel 2
model3 8
)8 9
;9 :
bool 
AddAddreessForUser 
(  $
ShippingAddressViewModel  8'
objShippingAddressViewModel9 T
)T U
;U V
bool 
DeleteCartProduct 
( 
long #
Id$ &
=' (
$num) *
)* +
;+ ,
Task 
<  
DataTableResultModel !
<! "
OrderViewModel" 0
>0 1
>1 2
GetOrderList3 ?
(? @
DTParameterModel@ P
criteriaQ Y
,Y Z
stringZ `
mobileNumbera m
=m n
$strn p
)p q
;q r
string   
AddOrderDetails   
(   
string   %
mobileNumber  & 2
=  3 4
$str  5 7
,  7 8
double  9 ?

totalPrice  @ J
=  K L
$num  L M
,  M N
string  N T
	addressId  U ^
=  ^ _
$str  _ a
)  a b
;  b c
bool!! 
DeleteCartProducts!! 
(!!  
string!!  &
mobileNumber!!' 3
=!!4 5
$str!!6 8
)!!8 9
;!!9 :
List"" 
<"" 
Shop_Order_Details"" 
>""  
GetOrderHistory""! 0
(""0 1
string""1 7
mobileNumber""8 D
=""E F
$str""G I
)""I J
;""J K
}## 
}$$ ��
iE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\BussinessServices\User\UserServices.cs
	namespace 	

GrowIndigo
 
. 
BAL 
. 
BussinessServices *
.* +
User+ /
{ 
public 

class 
UserServices 
: 
IUserServices  -
{ 
private 
IUserRepository 
objIUser  (
=) *
null+ /
;/ 0
private 
IOrderRepository  
	objIOrder! *
=+ ,
null- 1
;1 2
public 
UserServices 
( 
IUserRepository +
	_objIUser, 5
)5 6
{ 	
objIUser 
= 
	_objIUser  
;  !
} 	
public   
UserServices   
(   
IOrderRepository   ,

_objIOrder  - 7
)  7 8
{!! 	
	objIOrder"" 
="" 

_objIOrder"" "
;""" #
}$$ 	
public(( 
bool(( 
AddUser(( 
((( 
UserInfoViewModel(( -
model((. 3
)((3 4
{)) 	
try** 
{++ 
{,, $
Shop_Retailer_UserMaster-- ,
	userModel--- 6
=--7 8
new--9 <$
Shop_Retailer_UserMaster--= U
(--U V
)--V W
{.. 
mobile_number// %
=//& '
model//( -
.//- .
MobileNumber//. :
,//: ;
state00 
=00 
model00  %
.00% &
StateId00& -
.00- .
ToString00. 6
(006 7
)007 8
,008 9
	user_code11 !
=11" #
model11$ )
.11) *
MobileNumber11* 6
,116 7
	firm_name22 !
=22" #
model22$ )
.22) *
FirmName22* 2
}33 
;33 
var44 
result44 
=44  
objIUser44! )
.44) *
AddUser44* 1
(441 2
	userModel442 ;
)44; <
;44< =
var55 
mobileNumber55 $
=55% &
	userModel55' 0
.550 1
mobile_number551 >
;55> ?
return88 
true88 
;88  
}99 
};; 
catch<< 
(<< 
	Exception<< 
ex<< 
)<<  
{== 
throw>> 
ex>> 
;>> 
}?? 
}AA 	
publicCC 
boolCC 

AddUserOtpCC 
(CC 
LoginViewModelCC -
modelCC. 3
)CC3 4
{DD 	
tryEE 
{FF 
stringGG 
mobileNumberGG #
=GG$ %
modelGG& +
.GG+ ,
MobileNumberGG, 8
;GG8 9
varHH 
getUserDetailsHH "
=HH# $
objIUserHH% -
.HH- .!
GetUserbyMobileNumberHH. C
(HHC D
mobileNumberHHD P
)HHP Q
;HHQ R
ifII 
(II 
getUserDetailsII "
!=II# %
nullII& *
)II* +
{JJ 
getUserDetailsKK "
.KK" #
	user_codeKK# ,
=KK- .
modelKK/ 4
.KK4 5
MobileNumberKK5 A
;KKA B
getUserDetailsLL "
.LL" #
mobile_numberLL# 0
=LL1 2
modelLL3 8
.LL8 9
MobileNumberLL9 E
;LLE F
getUserDetailsMM "
.MM" #
	EntryDateMM# ,
=MM- .
modelMM/ 4
.MM4 5
CreatedDateMM5 @
;MM@ A
getUserDetailsNN "
.NN" #
User_pwdNN# +
=NN, -
modelNN. 3
.NN3 4
OTPNN4 7
;NN7 8
varPP 
addOtpPP 
=PP  
objIUserPP! )
.PP) *

UpdateUserPP* 4
(PP4 5
getUserDetailsPP5 C
)PPC D
;PPD E
returnQQ 
addOtpQQ !
;QQ! "
}SS 
elseTT 
{UU 
returnVV 
falseVV  
;VV  !
}WW 
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 
throw\\ 
ex\\ 
;\\ 
}]] 
}^^ 	
public`` 
bool`` 
CheckOtpFromDb`` "
(``" #
string``# )
otp``* -
=``. /
$str``0 2
)``2 3
{aa 	
trybb 
{cc 
varee 
checkOtpee 
=ee 
objIUseree '
.ee' (
CheckOtpFromDbee( 6
(ee6 7
otpee7 :
)ee: ;
;ee; <
returnff 
checkOtpff 
;ff  
}jj 
catchkk 
(kk 
	Exceptionkk 
exkk 
)kk  
{ll 
thrownn 
exnn 
;nn 
}oo 
}pp 	
publicqq 
boolqq #
CheckUserProfileUpdatedqq +
(qq+ ,
stringqq, 2
mobileNumberqq3 ?
=qq@ A
$strqqB D
)qqD E
{rr 	
varss "
checkuserProfileUpdatess &
=ss' (
objIUserss) 1
.ss1 2#
CheckUserProfileUpdatedss2 I
(ssI J
mobileNumberssJ V
)ssV W
;ssW X
returntt "
checkuserProfileUpdatett )
;tt) *
}uu 	
publicww 
Listww 
<ww 
Shop_CartInfoww !
>ww! "'
GetCartDetailByMobileNumberww# >
(ww> ?
stringww? E
mobileNumberwwF R
)wwR S
{xx 	
varyy "
checkuserProfileUpdateyy &
=yy' (
objIUseryy) 1
.yy1 2'
GetCartDetailByMobileNumberyy2 M
(yyM N
mobileNumberyyN Z
)yyZ [
;yy[ \
returnzz "
checkuserProfileUpdatezz )
;zz) *
}{{ 	
public}} 
bool}} 
DeleteCartProduct}} %
(}}% &
long}}& *
Id}}+ -
=}}. /
$num}}0 1
)}}1 2
{~~ 	
var 
deleteCartProduct !
=" #
objIUser$ ,
., -
DeleteCartProduct- >
(> ?
Id? A
)A B
;B C
return
�� 
deleteCartProduct
�� $
;
��$ %
}
�� 	
public
�� &
Shop_Retailer_UserMaster
�� '
GetuserInfo
��( 3
(
��3 4
string
��4 :
mobileNumber
��; G
=
��H I
$str
��J L
)
��L M
{
�� 	
var
�� 
getUserInfo
�� 
=
�� 
objIUser
�� &
.
��& '
GetuserInfo
��' 2
(
��2 3
mobileNumber
��3 ?
)
��? @
;
��@ A
return
�� 
getUserInfo
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
UpdateUserProfile
�� %
(
��% &!
UpdateUserViewModel
��& 9
model
��: ?
)
��? @
{
�� 	
try
�� 
{
�� &
Shop_Retailer_UserMaster
�� ()
objShop_Retailer_UserMaster
��) D
=
��E F
new
��G J&
Shop_Retailer_UserMaster
��K c
(
��c d
)
��d e
;
��e f)
objShop_Retailer_UserMaster
�� +
.
��+ ,
mobile_number
��, 9
=
��: ;
model
��< A
.
��A B
mobile_number
��B O
;
��O P
var
�� 
getUserDetails
�� "
=
��# $
objIUser
��% -
.
��- .-
GetUserInfoDetailByMobileNumber
��. M
(
��M N)
objShop_Retailer_UserMaster
��N i
)
��i j
;
��j k
if
�� 
(
�� 
getUserDetails
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
getUserDetails
�� "
.
��" #
retailer_name
��# 0
=
��1 2
model
��3 8
.
��8 9
retailer_name
��9 F
;
��F G
getUserDetails
�� "
.
��" # 
retailer_last_name
��# 5
=
��6 7
model
��8 =
.
��= > 
retailer_last_name
��> P
;
��P Q
getUserDetails
�� "
.
��" #
email_id
��# +
=
��, -
model
��. 3
.
��3 4
email_id
��4 <
;
��< =
getUserDetails
�� "
.
��" #

birth_date
��# -
=
��. /
model
��0 5
.
��5 6

birth_date
��6 @
;
��@ A
getUserDetails
�� "
.
��" #
address
��# *
=
��+ ,
model
��- 2
.
��2 3
address
��3 :
;
��: ;
getUserDetails
�� "
.
��" #
houseNo
��# *
=
��+ ,
model
��- 2
.
��2 3
houseNo
��3 :
;
��: ;
getUserDetails
�� "
.
��" #
streetLine1
��# .
=
��/ 0
model
��1 6
.
��6 7
streetLine1
��7 B
;
��B C
getUserDetails
�� "
.
��" #
streetLine2
��# .
=
��/ 0
model
��1 6
.
��6 7
streetLine2
��7 B
;
��B C
getUserDetails
�� "
.
��" #
state
��# (
=
��) *
model
��+ 0
.
��0 1
state
��1 6
;
��6 7
getUserDetails
�� "
.
��" #
district
��# +
=
��, -
model
��. 3
.
��3 4
district
��4 <
;
��< =
getUserDetails
�� "
.
��" #
taluka
��# )
=
��* +
model
��, 1
.
��1 2
taluka
��2 8
;
��8 9
getUserDetails
�� "
.
��" #
town
��# '
=
��( )
model
��* /
.
��/ 0
town
��0 4
;
��4 5
getUserDetails
�� "
.
��" #
pincode
��# *
=
��+ ,
model
��- 2
.
��2 3
pincode
��3 :
;
��: ;
getUserDetails
�� "
.
��" #
cstn_number
��# .
=
��/ 0
model
��1 6
.
��6 7
cstn_number
��7 B
;
��B C
getUserDetails
�� "
.
��" #
profileUpdate
��# 0
=
��1 2
true
��3 7
;
��7 8
getUserDetails
�� "
.
��" #

vat_number
��# -
=
��. /
model
��0 5
.
��5 6

vat_number
��6 @
;
��@ A
getUserDetails
�� "
.
��" #

pan_number
��# -
=
��. /
model
��0 5
.
��5 6

pan_number
��6 @
;
��@ A
getUserDetails
�� "
.
��" #

license_no
��# -
=
��. /
model
��0 5
.
��5 6

license_no
��6 @
;
��@ A
getUserDetails
�� "
.
��" ##
seed_license_validity
��# 8
=
��9 :
model
��; @
.
��@ A#
seed_license_validity
��A V
;
��V W
getUserDetails
�� "
.
��" #
imei_number
��# .
=
��/ 0
model
��1 6
.
��6 7
imei_number
��7 B
;
��B C
getUserDetails
�� "
.
��" #

gst_number
��# -
=
��. /
model
��0 5
.
��5 6

gst_number
��6 @
;
��@ A
getUserDetails
�� "
.
��" #
user_company
��# /
=
��0 1
model
��2 7
.
��7 8
user_company
��8 D
;
��D E
getUserDetails
�� "
.
��" #
	firm_name
��# ,
=
��- .
model
��/ 4
.
��4 5
	firm_name
��5 >
;
��> ?
var
�� 
result
�� 
=
��  
objIUser
��! )
.
��) *

UpdateUser
��* 4
(
��4 5
getUserDetails
��5 C
)
��C D
;
��D E
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
ex
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
��  
AddAddreessForUser
�� &
(
��& '&
ShippingAddressViewModel
��' ?)
objShippingAddressViewModel
��@ [
)
��[ \
{
�� 	#
Shop_Shipping_address
�� !&
objShop_Shipping_address
��" :
=
��; <
new
��= @#
Shop_Shipping_address
��A V
(
��V W
)
��W X
;
��X Y&
objShop_Shipping_address
�� $
.
��$ %
reciver_name
��% 1
=
��2 3)
objShippingAddressViewModel
��4 O
.
��O P
reciver_name
��P \
;
��\ ]&
objShop_Shipping_address
�� $
.
��$ %
retailer_mobile
��% 4
=
��5 6)
objShippingAddressViewModel
��7 R
.
��R S
retailer_mobile
��S b
;
��b c&
objShop_Shipping_address
�� $
.
��$ %
ship_address
��% 1
=
��2 3)
objShippingAddressViewModel
��4 O
.
��O P
ship_address
��P \
;
��\ ]&
objShop_Shipping_address
�� $
.
��$ %
city
��% )
=
��* +)
objShippingAddressViewModel
��, G
.
��G H
city
��H L
;
��L M&
objShop_Shipping_address
�� $
.
��$ %
pincode
��% ,
=
��- .)
objShippingAddressViewModel
��/ J
.
��J K
pincode
��K R
;
��R S&
objShop_Shipping_address
�� $
.
��$ %
retailer_id
��% 0
=
��1 2
$str
��3 :
;
��: ;&
objShop_Shipping_address
�� $
.
��$ %
ship_mobile
��% 0
=
��1 2)
objShippingAddressViewModel
��3 N
.
��N O
ship_mobile
��O Z
;
��Z [&
objShop_Shipping_address
�� $
.
��$ %
landline_number
��% 4
=
��5 6)
objShippingAddressViewModel
��7 R
.
��R S
landline_number
��S b
;
��b c&
objShop_Shipping_address
�� $
.
��$ %
tr_date
��% ,
=
��- .
DateTime
��/ 7
.
��7 8
Now
��8 ;
;
��; <
var
�� 
adddress
�� 
=
�� 
objIUser
�� #
.
��# $ 
AddAddreessForUser
��$ 6
(
��6 7&
objShop_Shipping_address
��7 O
)
��O P
;
��P Q
return
�� 
adddress
�� 
;
�� 
}
�� 	
public
�� 
string
�� 
AddOrderDetails
�� %
(
��% &
string
��& ,
mobileNumber
��- 9
=
��: ;
$str
��< >
,
��> ?
double
��@ F

totalPrice
��G Q
=
��R S
$num
��T U
,
��U V
string
��W ]
	addressId
��^ g
=
��g h
$str
��h j
)
��j k
{
�� 	
try
�� 
{
��  
Shop_Order_Details
�� "#
objShop_Order_Details
��# 8
=
��9 :
new
��; > 
Shop_Order_Details
��? Q
(
��Q R
)
��R S
;
��S T#
objShop_Order_Details
�� %
.
��% &
retailer_id
��& 1
=
��2 3
mobileNumber
��4 @
;
��@ A#
objShop_Order_Details
�� %
.
��% &
retailer_mobile
��& 5
=
��6 7
mobileNumber
��8 D
;
��D E#
objShop_Order_Details
�� %
.
��% &

Totalprice
��& 0
=
��1 2

totalPrice
��3 =
.
��= >
ToString
��> F
(
��F G
)
��G H
;
��H I#
objShop_Order_Details
�� %
.
��% &
payment_mode
��& 2
=
��3 4
$str
��5 =
;
��= >#
objShop_Order_Details
�� %
.
��% &
	orderDate
��& /
=
��0 1
DateTime
��2 :
.
��: ;
Now
��; >
;
��> ?#
objShop_Order_Details
�� %
.
��% &
order_status
��& 2
=
��3 4
$str
��5 >
;
��> ?#
objShop_Order_Details
�� %
.
��% &!
shipping_address_id
��& 9
=
��: ;
	addressId
��< E
;
��E F
var
�� 
addorder
�� 
=
�� 
objIUser
�� '
.
��' (
AddOrderDetail
��( 6
(
��6 7#
objShop_Order_Details
��7 L
)
��L M
;
��M N
string
�� 
orderId
�� 
=
��  
addorder
��! )
.
��) *
order_id
��* 2
.
��2 3
ToString
��3 ;
(
��; <
)
��< =
;
��= >
var
�� *
getCartDetailForMobileNumber
�� 0
=
��1 2)
GetCartDetailByMobileNumber
��3 N
(
��N O
mobileNumber
��O [
)
��[ \
;
��\ ]
if
�� 
(
�� 
addorder
�� 
!=
�� 
null
��  $
)
��$ %
{
�� &
Shop_OrderProductDetails
�� ,)
objShop_OrderProductDetails
��- H
=
��I J
new
��K N&
Shop_OrderProductDetails
��O g
(
��g h
)
��h i
;
��i j
foreach
�� 
(
�� 
var
��  
product
��! (
in
��) +*
getCartDetailForMobileNumber
��, H
)
��H I
{
�� )
objShop_OrderProductDetails
�� 3
.
��3 4
order_id
��4 <
=
��= >
orderId
��? F
;
��F G)
objShop_OrderProductDetails
�� 3
.
��3 4
price
��4 9
=
��: ;
product
��< C
.
��C D
Price
��D I
;
��I J)
objShop_OrderProductDetails
�� 3
.
��3 4

product_id
��4 >
=
��? @
product
��A H
.
��H I
	ProductId
��I R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
;
��] ^)
objShop_OrderProductDetails
�� 3
.
��3 4
tr_date
��4 ;
=
��< =
DateTime
��> F
.
��F G
Now
��G J
;
��J K
var
�� 
addProductorder
�� +
=
��, -
objIUser
��. 6
.
��6 7#
AddProductOrderDetail
��7 L
(
��L M)
objShop_OrderProductDetails
��M h
)
��h i
;
��i j
}
�� 
return
�� 
orderId
�� "
;
��" #
}
�� 
else
�� 
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
throw
�� 
ex
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
��  
UpdateOrderDeatils
�� &
(
��& '
OrderViewModel
��' 5
model
��6 ;
)
��; <
{
�� 	 
Shop_Order_Details
�� #
objShop_Order_Details
�� 4
=
��5 6
new
��7 : 
Shop_Order_Details
��; M
(
��M N
)
��N O
;
��O P#
objShop_Order_Details
�� !
.
��! "
order_id
��" *
=
��+ ,
model
��- 2
.
��2 3
Order_Id
��3 ;
;
��; <
var
�� 
getOrderIndo
�� 
=
�� 
objIUser
�� '
.
��' (%
GetOrderDetailByOrderId
��( ?
(
��? @#
objShop_Order_Details
��@ U
)
��U V
;
��V W
if
�� 
(
�� 
getOrderIndo
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
getOrderIndo
�� 
.
�� 
rzp_order_id
�� )
=
��* +
model
��, 1
.
��1 2
rzp_order_id
��2 >
;
��> ?
getOrderIndo
�� 
.
�� 
rzp_payment_id
�� +
=
��, -
model
��. 3
.
��3 4
rzp_payment_id
��4 B
;
��B C
getOrderIndo
�� 
.
��  
rzp_payment_status
�� /
=
��0 1
model
��2 7
.
��7 8 
rzp_payment_status
��8 J
;
��J K
getOrderIndo
�� 
.
�� 
order_status
�� )
=
��* +
model
��, 1
.
��1 2
order_status
��2 >
;
��> ?
getOrderIndo
�� 
.
��  
rzp_payment_status
�� /
=
��0 1
model
��2 7
.
��7 8 
rzp_payment_status
��8 J
;
��J K
var
�� 
result
�� 
=
�� 
objIUser
�� %
.
��% & 
UpdateOrderDetails
��& 8
(
��8 9
getOrderIndo
��9 E
)
��E F
;
��F G
return
�� 
result
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 
public
�� 
bool
��  
DeleteCartProducts
�� &
(
��& '
string
��' -
mobileNumber
��. :
=
��; <
$str
��= ?
)
��? @
{
�� 	
var
�� )
getAllProductByMobileNumber
�� +
=
��, -
objIUser
��. 6
.
��6 7%
GetAllCartProductDetail
��7 N
(
��N O
mobileNumber
��O [
)
��[ \
;
��\ ]
var
�� 
deleteCartValues
��  
=
��! "
objIUser
��# +
.
��+ ,#
DeleteAllCartProducts
��, A
(
��A B)
getAllProductByMobileNumber
��B ]
)
��] ^
;
��^ _
return
�� 
deleteCartValues
�� #
;
��# $
}
�� 	
public
�� 
List
�� 
<
��  
Shop_Order_Details
�� &
>
��& '
GetOrderHistory
��( 7
(
��8 9
string
��9 ?
mobileNumber
��@ L
=
��L M
$str
��M O
)
��O P
{
�� 	
var
�� +
getOrderDetailsByMobileNumber
�� -
=
��. /
objIUser
��0 8
.
��8 9
GetOrderHistory
��9 H
(
��H I
mobileNumber
��I U
)
��U V
;
��V W
return
�� +
getOrderDetailsByMobileNumber
�� 0
;
��0 1
}
�� 	
public
��	 
Task
�� 
<
�� "
DataTableResultModel
�� )
<
��) *
OrderViewModel
��* 8
>
��8 9
>
��9 :
GetOrderList
��; G
(
��G H
DTParameterModel
��	 
criteria
�� "
,
��" #
string
��$ *
mobileNumber
��+ 7
=
��8 9
$str
��: <
)
��< =
{
�� 	
return
�� 
this
�� 
.
�� 
objIUser
��  
.
��  !
GetOrderList
��! -
(
��- .
criteria
��. 6
,
��6 7
mobileNumber
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
bool
�� 

Addcontact
�� 
(
�� 
ContactViewModel
�� /
model
��0 5
)
��5 6
{
�� 	
shop_ContactUs
�� 
objshop_ContactUs
�� ,
=
��- .
new
��/ 2
shop_ContactUs
��3 A
(
��A B
)
��B C
;
��C D
objshop_ContactUs
�� 
.
�� 
Name
�� "
=
��# $
model
��% *
.
��* +
Name
��+ /
;
��/ 0
objshop_ContactUs
�� 
.
�� 
Subject
�� %
=
��& '
model
��( -
.
��- .
Subject
��. 5
;
��5 6
objshop_ContactUs
�� 
.
�� 
Email
�� #
=
��$ %
model
��& +
.
��+ ,
Email
��, 1
;
��1 2
objshop_ContactUs
�� 
.
�� 
Message
�� %
=
��& '
model
��( -
.
��- .
Message
��. 5
;
��5 6
objshop_ContactUs
�� 
.
�� 
MobileNumber
�� *
=
��+ ,
model
��- 2
.
��2 3
MobileNumber
��3 ?
;
��? @
var
��
 
result
�� 
=
�� 
objIUser
�� 
.
��  

Addcontact
��  *
(
��* +
objshop_ContactUs
��+ <
)
��< =
;
��= >
return
�� 
result
�� 
;
�� 
}
�� 	
public
��  
Shop_Order_Details
�� !%
GetOrderDetailByOrderId
��" 9
(
��9 :
int
��: =
orderId
��> E
=
��E F
$num
��F G
)
��G H
{
�� 	
var
�� 
getOrderDetail
�� 
=
��  
objIUser
��! )
.
��) *%
GetOrderDetailByOrderId
��* A
(
��A B
orderId
��B I
)
��I J
;
��J K
return
�� 
getOrderDetail
�� !
;
��! "
}
�� 	
}
�� 
}�� �
LE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\Class1.cs
	namespace 	

GrowIndigo
 
. 
BAL 
{ 
public		 

class		 
Class1		 
{

 
} 
} �
]E:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.BAL\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str )
)) *
]* +
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str +
)+ ,
], -
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *