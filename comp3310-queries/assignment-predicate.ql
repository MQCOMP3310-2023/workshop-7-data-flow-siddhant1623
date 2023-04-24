/**
 * @name Assignment predicate example
 * @kind problem
 * @problem.severity warning
 * @id java/example/assignment-predicate
 */


import java

 predicate inAssignment(Expr e){
   exists (AssignExpr a| a.getAChildExpr*() = e) or exists (
    LocalVariableDeclExpr a| a.getAchildExpor*() = e)
   
 }
 class StringConcat extends AddExpr {
  StringConcat() { this.getType().toString()="String" }
 }
 
 from MethodAccess str
 where inAssignment(str)
 select str, "Addition used in assignment or declaration."
