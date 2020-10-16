// Skipping function Insert(none), it contains poisonous unsupported syntaxes

// Skipping function GetById(none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.DAL.DataRepositories.Repository.Repository$T$.GetAllList$outint.System.Linq.Expressions.Expression$System.Func$T.bool$$.System.Func$System.Linq.IQueryable$T$.System.Linq.IOrderedQueryable$T$$.bool.int.int.string$(i32, none, none, i1, i32, i32, none) -> none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :102 :8) {
^entry (%_totalCount : i32, %_filter : none, %_orderBy : none, %_enablePaging : i1, %_curPage : i32, %_countPerPage : i32, %_includeProperties : none):
%0 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :103 :7)
cbde.store %_totalCount, %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :103 :7)
%1 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :104 :7)
cbde.store %_filter, %1 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :104 :7)
%2 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :105 :7)
cbde.store %_orderBy, %2 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :105 :7)
%3 = cbde.alloca i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :106 :7)
cbde.store %_enablePaging, %3 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :106 :7)
%4 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :107 :7)
cbde.store %_curPage, %4 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :107 :7)
%5 = cbde.alloca i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :108 :7)
cbde.store %_countPerPage, %5 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :108 :7)
%6 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :109 :7)
cbde.store %_includeProperties, %6 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :109 :7)
br ^0

^0: // JumpBlock
%7 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :19) // this (ThisExpression)
%8 = cbde.load %0 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :37)
%9 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :49) // Not a variable of known type: filter
%10 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :57) // Not a variable of known type: orderBy
%11 = cbde.load %3 : memref<i1> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :66)
%12 = cbde.load %4 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :80)
%13 = cbde.load %5 : memref<i32> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :89)
%14 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :103) // Not a variable of known type: includeProperties
%15 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :19) // this.GetQuery(out totalCount, filter, orderBy, enablePaging, curPage, countPerPage, includeProperties) (InvocationExpression)
%16 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :19) // this.GetQuery(out totalCount, filter, orderBy, enablePaging, curPage, countPerPage, includeProperties).ToList<T>() (InvocationExpression)
return %16 : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :111 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetQuery(i32, none, none, i1, i32, i32, none), it contains poisonous unsupported syntaxes

// Skipping function GetAll(), it contains poisonous unsupported syntaxes

// Skipping function FindBy(none), it contains poisonous unsupported syntaxes

// Skipping function FindBy(none), it contains poisonous unsupported syntaxes

// Skipping function FindBy(none, none), it contains poisonous unsupported syntaxes

// Skipping function SearchBy(none), it contains poisonous unsupported syntaxes

// Skipping function SearchBy(none, none), it contains poisonous unsupported syntaxes

// Skipping function Update(none), it contains poisonous unsupported syntaxes

// Skipping function Update(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(none), it contains poisonous unsupported syntaxes

// Skipping function SqlQuery(none), it contains poisonous unsupported syntaxes

// Skipping function SqlQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function Exists(none), it contains poisonous unsupported syntaxes

func @_GrowIndigo.DAL.DataRepositories.Repository.Repository$T$.Exists$paramsobject$$$(none) -> i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :517 :8) {
^entry (%_keys : none):
%0 = cbde.alloca none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :517 :27)
cbde.store %_keys, %0 : memref<none> loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :517 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :20) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :20) // context.Set<T>() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :42) // Not a variable of known type: keys
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :20) // context.Set<T>().Find(keys) (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :51) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :20) // comparison of unknown type: context.Set<T>().Find(keys) != null
return %6 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :519 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Exists(none), it contains poisonous unsupported syntaxes

// Skipping function Commit(), it contains poisonous unsupported syntaxes

func @_GrowIndigo.DAL.DataRepositories.Repository.Repository$T$.Dispose$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :583 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :585 :16) // Not a variable of known type: context
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :585 :27) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :585 :16) // comparison of unknown type: context != null
cond_br %2, ^1, ^2 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :585 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :587 :16) // Not a variable of known type: context
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :587 :16) // context.Dispose() (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\Repository\\Repository.cs" :588 :26) // null (NullLiteralExpression)
br ^2

^2: // ExitBlock
return

}
