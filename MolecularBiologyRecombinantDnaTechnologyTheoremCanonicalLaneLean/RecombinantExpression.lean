import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure ExpressionCassette where
  promoter : String
  rbs : String
  gene : String
  terminator : String
  expressionActive : Prop
  expressionActiveTerm : expressionActive

structure InductionCondition where
  inducer : String
  dose : Nat
  time : Nat
  inductionActive : Prop
  inductionActiveTerm : inductionActive

def ProteinExpression (C : ExpressionCassette) (I : InductionCondition) : Prop :=
  C.expressionActive ∧ I.inductionActive

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
