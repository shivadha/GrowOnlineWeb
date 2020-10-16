Ω
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
} ∂<
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

state_code	RR| Ü
.
RRÜ á
ToString
RRá è
(
RRè ê
)
RRê ë
}
RRí ì
)
RRì î
.
RRî ï
OrderBy
RRï ú
(
RRú ù
x
RRù û
=>
RRü °
x
RR¢ £
.
RR£ §
Text
RR§ ®
)
RR® ©
.
RR© ™
ToList
RR™ ∞
(
RR∞ ±
)
RR± ≤
;
RR≤ ≥
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
ÄÄ 
throw
ÅÅ 
ex
ÅÅ 
;
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
}ÖÖ Ï
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
} à
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
} ì
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
}!! Œ
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

searchtext	} á
,
á à
string
â è
Sort
ê î
=
ï ñ
$str
ó ô
)
ô ö
;
ö õ
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
,	 Ä
string
Å á
CompanyName
à ì
=
î ï
$str
ñ ò
,
ò ô
string
ö †
Sort
° •
=
• ¶
$str
¶ ®
,
® ©
string
™ ∞
CropName
± π
=
π ∫
$str
∫ º
,
º Ω
int
æ ¡
MinPrice
¬  
=
À Ã
$num
Õ Œ
,
Œ œ
int
– ”
MaxPrice
‘ ‹
=
› ﬁ
$num
ﬂ ‡
)
‡ ·
;
· ‚
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
Ä Ç
,
Ç É
string
Ñ ä
	stateName
ã î
=
ï ñ
$str
ó ô
)
ô ö
;
ö õ
List 
< #
shop_manufacture_master $
>$ %(
GetManufactureDetailsProduct& B
(B C
)C D
;D E
} 
} ˝_
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
ProductName	TTy Ñ
=
TTÖ Ü
$str
TTá â
,
TTâ ä
string
TTã ë
	stateName
TTí õ
=
TTú ù
$str
TTû †
)
TT† °
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
)	XX Ä
;
XXÄ Å
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

searchtext	ss| Ü
,
ssÜ á
string
ssà é
CompanyName
ssè ö
=
ssõ ú
$str
ssù ü
,
ssü †
string
ss° ß
sort
ss® ¨
=
ss≠ Æ
$str
ssØ ±
,
ss± ≤
string
ss≥ π
CropName
ss∫ ¬
=
ss¬ √
$str
ss√ ≈
,
ss≈ ∆
int
ss«  
MinPrice
ssÀ ”
=
ss” ‘
$num
ss‘ ’
,
ss’ ÷
int
ss◊ ⁄
MaxPrice
ss€ „
=
ss„ ‰
$num
ss‰ Â
)
ssÂ Ê
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
uuÄ à
,
uuà â
MinPrice
uuä í
,
uuí ì
MaxPrice
uuî ú
)
uuú ù
.
uuù û
ToList
uuû §
(
uu§ •
)
uu• ¶
;
uu¶ ß
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
string	zz} É

searchtext
zzÑ é
,
zzé è
string
zzê ñ
sort
zzó õ
=
zzú ù
$str
zzû †
)
zz† °
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
ToList	||{ Å
(
||Å Ç
)
||Ç É
;
||É Ñ
}~~ 	
public
ÅÅ 
List
ÅÅ 
<
ÅÅ %
shop_manufacture_master
ÅÅ +
>
ÅÅ+ ,*
GetManufactureDetailsProduct
ÅÅ- I
(
ÅÅI J
)
ÅÅJ K
{
ÇÇ 	
var
ÉÉ 
getCompanyProduct
ÉÉ !
=
ÉÉ" ##
objIProductRepository
ÉÉ$ 9
.
ÉÉ9 :*
GetManufactureDetailsProduct
ÉÉ: V
(
ÉÉV W
)
ÉÉW X
;
ÉÉX Y
return
ÖÖ 
getCompanyProduct
ÖÖ $
;
ÖÖ$ %
}
ââ 	
public
ãã 
double
ãã "
CheckMinProductPrice
ãã +
(
ãã+ ,
)
ãã, -
{
åå 	
var
çç  
getminProductPrice
çç "
=
çç# $#
objIProductRepository
çç% :
.
çç: ;"
CheckMinProductPrice
çç; O
(
ççO P
)
ççP Q
;
ççQ R
return
éé  
getminProductPrice
éé %
;
éé% &
}
èè 	
public
ëë 
double
ëë "
CheckMaxProductPrice
ëë +
(
ëë+ ,
)
ëë, -
{
íí 	
var
ìì  
getMAxProductPrice
ìì "
=
ìì# $#
objIProductRepository
ìì% :
.
ìì: ;"
CheckMaxProductPrice
ìì; O
(
ììO P
)
ììP Q
;
ììQ R
return
îî  
getMAxProductPrice
îî %
;
îî% &
}
ïï 	
}
òò 
}ôô ﬂ
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
}$$ Ô»
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
ÄÄ 
deleteCartProduct
ÄÄ $
;
ÄÄ$ %
}
ÅÅ 	
public
ÖÖ &
Shop_Retailer_UserMaster
ÖÖ '
GetuserInfo
ÖÖ( 3
(
ÖÖ3 4
string
ÖÖ4 :
mobileNumber
ÖÖ; G
=
ÖÖH I
$str
ÖÖJ L
)
ÖÖL M
{
ÜÜ 	
var
áá 
getUserInfo
áá 
=
áá 
objIUser
áá &
.
áá& '
GetuserInfo
áá' 2
(
áá2 3
mobileNumber
áá3 ?
)
áá? @
;
áá@ A
return
àà 
getUserInfo
àà 
;
àà 
}
ââ 	
public
ãã 
bool
ãã 
UpdateUserProfile
ãã %
(
ãã% &!
UpdateUserViewModel
ãã& 9
model
ãã: ?
)
ãã? @
{
åå 	
try
çç 
{
éé &
Shop_Retailer_UserMaster
èè ()
objShop_Retailer_UserMaster
èè) D
=
èèE F
new
èèG J&
Shop_Retailer_UserMaster
èèK c
(
èèc d
)
èèd e
;
èèe f)
objShop_Retailer_UserMaster
êê +
.
êê+ ,
mobile_number
êê, 9
=
êê: ;
model
êê< A
.
êêA B
mobile_number
êêB O
;
êêO P
var
ëë 
getUserDetails
ëë "
=
ëë# $
objIUser
ëë% -
.
ëë- .-
GetUserInfoDetailByMobileNumber
ëë. M
(
ëëM N)
objShop_Retailer_UserMaster
ëëN i
)
ëëi j
;
ëëj k
if
íí 
(
íí 
getUserDetails
íí "
!=
íí# %
null
íí& *
)
íí* +
{
ìì 
getUserDetails
îî "
.
îî" #
retailer_name
îî# 0
=
îî1 2
model
îî3 8
.
îî8 9
retailer_name
îî9 F
;
îîF G
getUserDetails
ïï "
.
ïï" # 
retailer_last_name
ïï# 5
=
ïï6 7
model
ïï8 =
.
ïï= > 
retailer_last_name
ïï> P
;
ïïP Q
getUserDetails
ññ "
.
ññ" #
email_id
ññ# +
=
ññ, -
model
ññ. 3
.
ññ3 4
email_id
ññ4 <
;
ññ< =
getUserDetails
óó "
.
óó" #

birth_date
óó# -
=
óó. /
model
óó0 5
.
óó5 6

birth_date
óó6 @
;
óó@ A
getUserDetails
òò "
.
òò" #
address
òò# *
=
òò+ ,
model
òò- 2
.
òò2 3
address
òò3 :
;
òò: ;
getUserDetails
ôô "
.
ôô" #
houseNo
ôô# *
=
ôô+ ,
model
ôô- 2
.
ôô2 3
houseNo
ôô3 :
;
ôô: ;
getUserDetails
öö "
.
öö" #
streetLine1
öö# .
=
öö/ 0
model
öö1 6
.
öö6 7
streetLine1
öö7 B
;
ööB C
getUserDetails
õõ "
.
õõ" #
streetLine2
õõ# .
=
õõ/ 0
model
õõ1 6
.
õõ6 7
streetLine2
õõ7 B
;
õõB C
getUserDetails
úú "
.
úú" #
state
úú# (
=
úú) *
model
úú+ 0
.
úú0 1
state
úú1 6
;
úú6 7
getUserDetails
ùù "
.
ùù" #
district
ùù# +
=
ùù, -
model
ùù. 3
.
ùù3 4
district
ùù4 <
;
ùù< =
getUserDetails
ûû "
.
ûû" #
taluka
ûû# )
=
ûû* +
model
ûû, 1
.
ûû1 2
taluka
ûû2 8
;
ûû8 9
getUserDetails
üü "
.
üü" #
town
üü# '
=
üü( )
model
üü* /
.
üü/ 0
town
üü0 4
;
üü4 5
getUserDetails
†† "
.
††" #
pincode
††# *
=
††+ ,
model
††- 2
.
††2 3
pincode
††3 :
;
††: ;
getUserDetails
°° "
.
°°" #
cstn_number
°°# .
=
°°/ 0
model
°°1 6
.
°°6 7
cstn_number
°°7 B
;
°°B C
getUserDetails
¢¢ "
.
¢¢" #
profileUpdate
¢¢# 0
=
¢¢1 2
true
¢¢3 7
;
¢¢7 8
getUserDetails
££ "
.
££" #

vat_number
££# -
=
££. /
model
££0 5
.
££5 6

vat_number
££6 @
;
££@ A
getUserDetails
§§ "
.
§§" #

pan_number
§§# -
=
§§. /
model
§§0 5
.
§§5 6

pan_number
§§6 @
;
§§@ A
getUserDetails
•• "
.
••" #

license_no
••# -
=
••. /
model
••0 5
.
••5 6

license_no
••6 @
;
••@ A
getUserDetails
¶¶ "
.
¶¶" ##
seed_license_validity
¶¶# 8
=
¶¶9 :
model
¶¶; @
.
¶¶@ A#
seed_license_validity
¶¶A V
;
¶¶V W
getUserDetails
ßß "
.
ßß" #
imei_number
ßß# .
=
ßß/ 0
model
ßß1 6
.
ßß6 7
imei_number
ßß7 B
;
ßßB C
getUserDetails
®® "
.
®®" #

gst_number
®®# -
=
®®. /
model
®®0 5
.
®®5 6

gst_number
®®6 @
;
®®@ A
getUserDetails
©© "
.
©©" #
user_company
©©# /
=
©©0 1
model
©©2 7
.
©©7 8
user_company
©©8 D
;
©©D E
getUserDetails
™™ "
.
™™" #
	firm_name
™™# ,
=
™™- .
model
™™/ 4
.
™™4 5
	firm_name
™™5 >
;
™™> ?
var
¨¨ 
result
¨¨ 
=
¨¨  
objIUser
¨¨! )
.
¨¨) *

UpdateUser
¨¨* 4
(
¨¨4 5
getUserDetails
¨¨5 C
)
¨¨C D
;
¨¨D E
return
≠≠ 
true
≠≠ 
;
≠≠  
}
ÆÆ 
else
ØØ 
{
∞∞ 
return
±± 
false
±±  
;
±±  !
}
≥≥ 
}
µµ 
catch
∂∂ 
(
∂∂ 
	Exception
∂∂ 
ex
∂∂ 
)
∂∂  
{
∑∑ 
throw
ππ 
ex
ππ 
;
ππ 
}
∫∫ 
}
ªª 	
public
ΩΩ 
bool
ΩΩ  
AddAddreessForUser
ΩΩ &
(
ΩΩ& '&
ShippingAddressViewModel
ΩΩ' ?)
objShippingAddressViewModel
ΩΩ@ [
)
ΩΩ[ \
{
ææ 	#
Shop_Shipping_address
øø !&
objShop_Shipping_address
øø" :
=
øø; <
new
øø= @#
Shop_Shipping_address
øøA V
(
øøV W
)
øøW X
;
øøX Y&
objShop_Shipping_address
¿¿ $
.
¿¿$ %
reciver_name
¿¿% 1
=
¿¿2 3)
objShippingAddressViewModel
¿¿4 O
.
¿¿O P
reciver_name
¿¿P \
;
¿¿\ ]&
objShop_Shipping_address
¡¡ $
.
¡¡$ %
retailer_mobile
¡¡% 4
=
¡¡5 6)
objShippingAddressViewModel
¡¡7 R
.
¡¡R S
retailer_mobile
¡¡S b
;
¡¡b c&
objShop_Shipping_address
¬¬ $
.
¬¬$ %
ship_address
¬¬% 1
=
¬¬2 3)
objShippingAddressViewModel
¬¬4 O
.
¬¬O P
ship_address
¬¬P \
;
¬¬\ ]&
objShop_Shipping_address
√√ $
.
√√$ %
city
√√% )
=
√√* +)
objShippingAddressViewModel
√√, G
.
√√G H
city
√√H L
;
√√L M&
objShop_Shipping_address
ƒƒ $
.
ƒƒ$ %
pincode
ƒƒ% ,
=
ƒƒ- .)
objShippingAddressViewModel
ƒƒ/ J
.
ƒƒJ K
pincode
ƒƒK R
;
ƒƒR S&
objShop_Shipping_address
≈≈ $
.
≈≈$ %
retailer_id
≈≈% 0
=
≈≈1 2
$str
≈≈3 :
;
≈≈: ;&
objShop_Shipping_address
∆∆ $
.
∆∆$ %
ship_mobile
∆∆% 0
=
∆∆1 2)
objShippingAddressViewModel
∆∆3 N
.
∆∆N O
ship_mobile
∆∆O Z
;
∆∆Z [&
objShop_Shipping_address
«« $
.
««$ %
landline_number
««% 4
=
««5 6)
objShippingAddressViewModel
««7 R
.
««R S
landline_number
««S b
;
««b c&
objShop_Shipping_address
»» $
.
»»$ %
tr_date
»»% ,
=
»»- .
DateTime
»»/ 7
.
»»7 8
Now
»»8 ;
;
»»; <
var
…… 
adddress
…… 
=
…… 
objIUser
…… #
.
……# $ 
AddAddreessForUser
……$ 6
(
……6 7&
objShop_Shipping_address
……7 O
)
……O P
;
……P Q
return
   
adddress
   
;
   
}
ÕÕ 	
public
œœ 
string
œœ 
AddOrderDetails
œœ %
(
œœ% &
string
œœ& ,
mobileNumber
œœ- 9
=
œœ: ;
$str
œœ< >
,
œœ> ?
double
œœ@ F

totalPrice
œœG Q
=
œœR S
$num
œœT U
,
œœU V
string
œœW ]
	addressId
œœ^ g
=
œœg h
$str
œœh j
)
œœj k
{
–– 	
try
““ 
{
””  
Shop_Order_Details
‘‘ "#
objShop_Order_Details
‘‘# 8
=
‘‘9 :
new
‘‘; > 
Shop_Order_Details
‘‘? Q
(
‘‘Q R
)
‘‘R S
;
‘‘S T#
objShop_Order_Details
◊◊ %
.
◊◊% &
retailer_id
◊◊& 1
=
◊◊2 3
mobileNumber
◊◊4 @
;
◊◊@ A#
objShop_Order_Details
ÿÿ %
.
ÿÿ% &
retailer_mobile
ÿÿ& 5
=
ÿÿ6 7
mobileNumber
ÿÿ8 D
;
ÿÿD E#
objShop_Order_Details
ŸŸ %
.
ŸŸ% &

Totalprice
ŸŸ& 0
=
ŸŸ1 2

totalPrice
ŸŸ3 =
.
ŸŸ= >
ToString
ŸŸ> F
(
ŸŸF G
)
ŸŸG H
;
ŸŸH I#
objShop_Order_Details
⁄⁄ %
.
⁄⁄% &
payment_mode
⁄⁄& 2
=
⁄⁄3 4
$str
⁄⁄5 =
;
⁄⁄= >#
objShop_Order_Details
€€ %
.
€€% &
	orderDate
€€& /
=
€€0 1
DateTime
€€2 :
.
€€: ;
Now
€€; >
;
€€> ?#
objShop_Order_Details
‹‹ %
.
‹‹% &
order_status
‹‹& 2
=
‹‹3 4
$str
‹‹5 >
;
‹‹> ?#
objShop_Order_Details
›› %
.
››% &!
shipping_address_id
››& 9
=
››: ;
	addressId
››< E
;
››E F
var
ﬁﬁ 
addorder
ﬁﬁ 
=
ﬁﬁ 
objIUser
ﬁﬁ '
.
ﬁﬁ' (
AddOrderDetail
ﬁﬁ( 6
(
ﬁﬁ6 7#
objShop_Order_Details
ﬁﬁ7 L
)
ﬁﬁL M
;
ﬁﬁM N
string
ﬂﬂ 
orderId
ﬂﬂ 
=
ﬂﬂ  
addorder
ﬂﬂ! )
.
ﬂﬂ) *
order_id
ﬂﬂ* 2
.
ﬂﬂ2 3
ToString
ﬂﬂ3 ;
(
ﬂﬂ; <
)
ﬂﬂ< =
;
ﬂﬂ= >
var
‡‡ *
getCartDetailForMobileNumber
‡‡ 0
=
‡‡1 2)
GetCartDetailByMobileNumber
‡‡3 N
(
‡‡N O
mobileNumber
‡‡O [
)
‡‡[ \
;
‡‡\ ]
if
·· 
(
·· 
addorder
·· 
!=
·· 
null
··  $
)
··$ %
{
‚‚ &
Shop_OrderProductDetails
„„ ,)
objShop_OrderProductDetails
„„- H
=
„„I J
new
„„K N&
Shop_OrderProductDetails
„„O g
(
„„g h
)
„„h i
;
„„i j
foreach
‰‰ 
(
‰‰ 
var
‰‰  
product
‰‰! (
in
‰‰) +*
getCartDetailForMobileNumber
‰‰, H
)
‰‰H I
{
ÂÂ )
objShop_OrderProductDetails
ÊÊ 3
.
ÊÊ3 4
order_id
ÊÊ4 <
=
ÊÊ= >
orderId
ÊÊ? F
;
ÊÊF G)
objShop_OrderProductDetails
ÁÁ 3
.
ÁÁ3 4
price
ÁÁ4 9
=
ÁÁ: ;
product
ÁÁ< C
.
ÁÁC D
Price
ÁÁD I
;
ÁÁI J)
objShop_OrderProductDetails
ËË 3
.
ËË3 4

product_id
ËË4 >
=
ËË? @
product
ËËA H
.
ËËH I
	ProductId
ËËI R
.
ËËR S
ToString
ËËS [
(
ËË[ \
)
ËË\ ]
;
ËË] ^)
objShop_OrderProductDetails
ÈÈ 3
.
ÈÈ3 4
tr_date
ÈÈ4 ;
=
ÈÈ< =
DateTime
ÈÈ> F
.
ÈÈF G
Now
ÈÈG J
;
ÈÈJ K
var
ÎÎ 
addProductorder
ÎÎ +
=
ÎÎ, -
objIUser
ÎÎ. 6
.
ÎÎ6 7#
AddProductOrderDetail
ÎÎ7 L
(
ÎÎL M)
objShop_OrderProductDetails
ÎÎM h
)
ÎÎh i
;
ÎÎi j
}
ÓÓ 
return
ÔÔ 
orderId
ÔÔ "
;
ÔÔ" #
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
return
ÙÙ 
null
ÙÙ 
;
ÙÙ  
}
ıı 
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
	Exception
˜˜ 
ex
˜˜ 
)
˜˜  
{
¯¯ 
throw
˙˙ 
ex
˙˙ 
;
˙˙ 
}
˚˚ 
}
˛˛ 	
public
ÄÄ 
bool
ÄÄ  
UpdateOrderDeatils
ÄÄ &
(
ÄÄ& '
OrderViewModel
ÄÄ' 5
model
ÄÄ6 ;
)
ÄÄ; <
{
ÅÅ 	 
Shop_Order_Details
ÉÉ #
objShop_Order_Details
ÉÉ 4
=
ÉÉ5 6
new
ÉÉ7 : 
Shop_Order_Details
ÉÉ; M
(
ÉÉM N
)
ÉÉN O
;
ÉÉO P#
objShop_Order_Details
ÑÑ !
.
ÑÑ! "
order_id
ÑÑ" *
=
ÑÑ+ ,
model
ÑÑ- 2
.
ÑÑ2 3
Order_Id
ÑÑ3 ;
;
ÑÑ; <
var
ÖÖ 
getOrderIndo
ÖÖ 
=
ÖÖ 
objIUser
ÖÖ '
.
ÖÖ' (%
GetOrderDetailByOrderId
ÖÖ( ?
(
ÖÖ? @#
objShop_Order_Details
ÖÖ@ U
)
ÖÖU V
;
ÖÖV W
if
ÜÜ 
(
ÜÜ 
getOrderIndo
ÜÜ 
!=
ÜÜ 
null
ÜÜ  $
)
ÜÜ$ %
{
áá 
getOrderIndo
àà 
.
àà 
rzp_order_id
àà )
=
àà* +
model
àà, 1
.
àà1 2
rzp_order_id
àà2 >
;
àà> ?
getOrderIndo
ââ 
.
ââ 
rzp_payment_id
ââ +
=
ââ, -
model
ââ. 3
.
ââ3 4
rzp_payment_id
ââ4 B
;
ââB C
getOrderIndo
ää 
.
ää  
rzp_payment_status
ää /
=
ää0 1
model
ää2 7
.
ää7 8 
rzp_payment_status
ää8 J
;
ääJ K
getOrderIndo
ãã 
.
ãã 
order_status
ãã )
=
ãã* +
model
ãã, 1
.
ãã1 2
order_status
ãã2 >
;
ãã> ?
getOrderIndo
åå 
.
åå  
rzp_payment_status
åå /
=
åå0 1
model
åå2 7
.
åå7 8 
rzp_payment_status
åå8 J
;
ååJ K
var
éé 
result
éé 
=
éé 
objIUser
éé %
.
éé% & 
UpdateOrderDetails
éé& 8
(
éé8 9
getOrderIndo
éé9 E
)
ééE F
;
ééF G
return
èè 
result
èè 
;
èè 
}
êê 
else
ëë 
{
íí 
return
ìì 
false
ìì 
;
ìì 
}
îî 
}
óó 
public
ôô 
bool
ôô  
DeleteCartProducts
ôô &
(
ôô& '
string
ôô' -
mobileNumber
ôô. :
=
ôô; <
$str
ôô= ?
)
ôô? @
{
öö 	
var
õõ )
getAllProductByMobileNumber
õõ +
=
õõ, -
objIUser
õõ. 6
.
õõ6 7%
GetAllCartProductDetail
õõ7 N
(
õõN O
mobileNumber
õõO [
)
õõ[ \
;
õõ\ ]
var
úú 
deleteCartValues
úú  
=
úú! "
objIUser
úú# +
.
úú+ ,#
DeleteAllCartProducts
úú, A
(
úúA B)
getAllProductByMobileNumber
úúB ]
)
úú] ^
;
úú^ _
return
ùù 
deleteCartValues
ùù #
;
ùù# $
}
™™ 	
public
¨¨ 
List
¨¨ 
<
¨¨  
Shop_Order_Details
¨¨ &
>
¨¨& '
GetOrderHistory
¨¨( 7
(
¨¨8 9
string
¨¨9 ?
mobileNumber
¨¨@ L
=
¨¨L M
$str
¨¨M O
)
¨¨O P
{
≠≠ 	
var
ÆÆ +
getOrderDetailsByMobileNumber
ÆÆ -
=
ÆÆ. /
objIUser
ÆÆ0 8
.
ÆÆ8 9
GetOrderHistory
ÆÆ9 H
(
ÆÆH I
mobileNumber
ÆÆI U
)
ÆÆU V
;
ÆÆV W
return
ØØ +
getOrderDetailsByMobileNumber
ØØ 0
;
ØØ0 1
}
∞∞ 	
public
≥≥	 
Task
≥≥ 
<
≥≥ "
DataTableResultModel
≥≥ )
<
≥≥) *
OrderViewModel
≥≥* 8
>
≥≥8 9
>
≥≥9 :
GetOrderList
≥≥; G
(
≥≥G H
DTParameterModel
¥¥	 
criteria
¥¥ "
,
¥¥" #
string
¥¥$ *
mobileNumber
¥¥+ 7
=
¥¥8 9
$str
¥¥: <
)
¥¥< =
{
µµ 	
return
∂∂ 
this
∂∂ 
.
∂∂ 
objIUser
∂∂  
.
∂∂  !
GetOrderList
∂∂! -
(
∂∂- .
criteria
∂∂. 6
,
∂∂6 7
mobileNumber
∂∂8 D
)
∂∂D E
;
∂∂E F
}
∑∑ 	
public
∫∫ 
bool
∫∫ 

Addcontact
∫∫ 
(
∫∫ 
ContactViewModel
∫∫ /
model
∫∫0 5
)
∫∫5 6
{
ªª 	
shop_ContactUs
ºº 
objshop_ContactUs
ºº ,
=
ºº- .
new
ºº/ 2
shop_ContactUs
ºº3 A
(
ººA B
)
ººB C
;
ººC D
objshop_ContactUs
ΩΩ 
.
ΩΩ 
Name
ΩΩ "
=
ΩΩ# $
model
ΩΩ% *
.
ΩΩ* +
Name
ΩΩ+ /
;
ΩΩ/ 0
objshop_ContactUs
ææ 
.
ææ 
Subject
ææ %
=
ææ& '
model
ææ( -
.
ææ- .
Subject
ææ. 5
;
ææ5 6
objshop_ContactUs
øø 
.
øø 
Email
øø #
=
øø$ %
model
øø& +
.
øø+ ,
Email
øø, 1
;
øø1 2
objshop_ContactUs
¿¿ 
.
¿¿ 
Message
¿¿ %
=
¿¿& '
model
¿¿( -
.
¿¿- .
Message
¿¿. 5
;
¿¿5 6
objshop_ContactUs
¡¡ 
.
¡¡ 
MobileNumber
¡¡ *
=
¡¡+ ,
model
¡¡- 2
.
¡¡2 3
MobileNumber
¡¡3 ?
;
¡¡? @
var
¬¬
 
result
¬¬ 
=
¬¬ 
objIUser
¬¬ 
.
¬¬  

Addcontact
¬¬  *
(
¬¬* +
objshop_ContactUs
¬¬+ <
)
¬¬< =
;
¬¬= >
return
√√ 
result
√√ 
;
√√ 
}
ƒƒ 	
public
∆∆  
Shop_Order_Details
∆∆ !%
GetOrderDetailByOrderId
∆∆" 9
(
∆∆9 :
int
∆∆: =
orderId
∆∆> E
=
∆∆E F
$num
∆∆F G
)
∆∆G H
{
«« 	
var
»» 
getOrderDetail
»» 
=
»»  
objIUser
»»! )
.
»») *%
GetOrderDetailByOrderId
»»* A
(
»»A B
orderId
»»B I
)
»»I J
;
»»J K
return
…… 
getOrderDetail
…… !
;
……! "
}
   	
}
ÂÂ 
}ÁÁ é
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
} à
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