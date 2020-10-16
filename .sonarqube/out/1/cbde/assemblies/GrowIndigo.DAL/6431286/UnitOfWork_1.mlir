func @_GrowIndigo.DAL.DataRepositories.UnitOfWork.UnitOfWork.SaveChanges$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :192 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :194 :12) // this (ThisExpression)
%1 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :194 :12) // this.context (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :194 :12) // this.context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_GrowIndigo.DAL.DataRepositories.UnitOfWork.UnitOfWork.Dispose$$() -> () loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :196 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :198 :12) // this (ThisExpression)
%1 = constant 1 : i1 loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :198 :25) // true
%2 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :198 :12) // this.Dispose(true) (InvocationExpression)
// Entity from another assembly: GC
%3 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :199 :40) // this (ThisExpression)
%4 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :199 :32) // (object)this (CastExpression)
%5 = cbde.unknown : none loc("E:\\P.R.O.J.E.C.T.S\\GrowIndigoWebApplication\\Project\\GrowIndigo.DAL\\DataRepositories\\UnitOfWork\\UnitOfWork.cs" :199 :12) // GC.SuppressFinalize((object)this) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Dispose(i1), it contains poisonous unsupported syntaxes

