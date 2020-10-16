š
RE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.Utilities\Class1.cs
	namespace 	

GrowIndigo
 
. 
	Utilities 
{ 
public		 

class		 
Class1		 
{

 
} 
} Ž,
jE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.Utilities\CommonFunction\CommonFunctions.cs
	namespace

 	

GrowIndigo


 
.

 
	Utilities

 
.

 
CommonFunction

 -
{ 
public 	
class 
CommonFunctions  
{ 
public 
string 
GenerateOTP !
(! "
)" #
{ 	
string 
	strrandom 
= 
string %
.% &
Empty& +
;+ ,
try   
{!! 
string"" 
numbers"" 
=""  
$str""! -
;""- .
Random## 
	objrandom##  
=##! "
new### &
Random##' -
(##- .
)##. /
;##/ 0
for$$ 
($$ 
int$$ 
i$$ 
=$$ 
$num$$ 
;$$ 
i$$  !
<$$" #
$num$$$ %
;$$% &
i$$' (
++$$( *
)$$* +
{%% 
int&& 
temp&& 
=&& 
	objrandom&& (
.&&( )
Next&&) -
(&&- .
$num&&. /
,&&/ 0
numbers&&1 8
.&&8 9
Length&&9 ?
)&&? @
;&&@ A
	strrandom'' 
+=''  
temp''! %
;''% &
}(( 
})) 
catch** 
(** 
	Exception** 
ex** 
)**  
{++ 
throw-- 
ex-- 
;-- 
}.. 
return// 
	strrandom// 
;// 
}00 	
public88 
bool88 
SendOTP88 
(88 
string88 "
otp88# &
,88& '
string88( .
mobileNumber88/ ;
)88; <
{99 	
try:: 
{;; 
string<< 
message<< 
=<<  
$str<<! 7
+<<8 9
otp<<: =
+<<> ?
$str<<@ d
+<<e f
mobileNumber<<g s
+<<t u
$str<<v }
+<<~ 
otp
<<€ ƒ
;
<<ƒ „
string== 
strUrl== 
=== 
$str==  }
+==~ 
message
==€ ‡
;
==‡ ˆ

WebRequest?? 
request?? "
=??# $
HttpWebRequest??% 3
.??3 4
Create??4 :
(??: ;
strUrl??; A
)??A B
;??B C
HttpWebResponse@@ 
response@@  (
=@@) *
(@@+ ,
HttpWebResponse@@, ;
)@@; <
request@@< C
.@@C D
GetResponse@@D O
(@@O P
)@@P Q
;@@Q R
StreamAA 
sAA 
=AA 
(AA 
StreamAA "
)AA" #
responseAA# +
.AA+ ,
GetResponseStreamAA, =
(AA= >
)AA> ?
;AA? @
StreamReaderCC 

readStreamCC '
=CC( )
newCC* -
StreamReaderCC. :
(CC: ;
sCC; <
)CC< =
;CC= >
stringDD 

dataStringDD !
=DD" #

readStreamDD$ .
.DD. /
	ReadToEndDD/ 8
(DD8 9
)DD9 :
;DD: ;
responseEE 
.EE 
CloseEE 
(EE 
)EE  
;EE  !
sFF 
.FF 
CloseFF 
(FF 
)FF 
;FF 

readStreamGG 
.GG 
CloseGG  
(GG  !
)GG! "
;GG" #
returnII 
trueII 
;II 
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 
returnNN 
falseNN 
;NN 
}OO 
}PP 	
publicXX 
boolXX 
SendSMSXX 
(XX 
stringXX "
mobileNumberXX# /
,XX/ 0
stringXX1 7
messageXX8 ?
)XX? @
{YY 	
tryZZ 
{[[ 
var]] 
client]] 
=]] 
new]]  
	RestSharp]]! *
.]]* +

RestClient]]+ 5
(]]5 6
$str]]6 \
)]]\ ]
;]]] ^
var^^ 
request^^ 
=^^ 
new^^ !
	RestSharp^^" +
.^^+ ,
RestRequest^^, 7
(^^7 8
Method^^8 >
.^^> ?
POST^^? C
)^^C D
;^^D E
request__ 
.__ 
	AddHeader__ !
(__! "
$str__" 0
,__0 1
$str__2 D
)__D E
;__E F
request`` 
.`` 
	AddHeader`` !
(``! "
$str``" +
,``+ ,
$str``- I
)``I J
;``J K
requestaa 
.aa 
AddParameteraa $
(aa$ %
$straa% 7
,aa7 8
$str	aa9 ˜
+
aa™ š
message
aa› ¢
+
aa£ ¤
$str
aa¥ ·
+
aa¸ ¹
mobileNumber
aaº Æ
+
aaÇ È
$str
aaÉ Ò
,
aaÒ Ó
ParameterType
aaÔ á
.
aaá â
RequestBody
aaâ í
)
aaí î
;
aaî ï
IRestResponsebb 
responsebb &
=bb' (
clientbb) /
.bb/ 0
Executebb0 7
(bb7 8
requestbb8 ?
)bb? @
;bb@ A
returnff 
trueff 
;ff 
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
returnkk 
falsekk 
;kk 
}ll 
}mm 	
}nn 
}oo Æ
XE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.Utilities\ConfigReader.cs
	namespace		 	

GrowIndigo		
 
.		 
	Utilities		 
{

 
public 

static 
class 
ConfigReader $
{ 
public 
static 
string 
ProjectName (
{ 	
get 
{ 
return 
System 
. 
Configuration +
.+ , 
ConfigurationManager, @
.@ A
AppSettingsA L
[L M
$strM Z
]Z [
;[ \
} 
} 	
} 
} Ž
cE:\P.R.O.J.E.C.T.S\GrowIndigoWebApplication\Project\GrowIndigo.Utilities\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str /
)/ 0
]0 1
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
$str 1
)1 2
]2 3
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