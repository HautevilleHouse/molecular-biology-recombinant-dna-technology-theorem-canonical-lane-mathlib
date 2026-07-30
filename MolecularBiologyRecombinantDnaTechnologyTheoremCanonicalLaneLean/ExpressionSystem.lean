import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure ExpressionSystem where
  promoter : String
  terminator : String
  regElements : List String
  expressionLevel : Prop
  inducibility : Prop

structure ExpressionEvidence (E : ExpressionSystem) where
  expressionLevelClosed : E.expressionLevel
  inducibilityClosed : E.inducibility

def ExpressionSystemClosed (E : ExpressionSystem) : Prop :=
  E.expressionLevel ∧ E.inducibility

theorem expression_system_closed_from_evidence
    (E : ExpressionSystem) (Ev : ExpressionEvidence E) :
    ExpressionSystemClosed E := by
  exact And.intro Ev.expressionLevelClosed Ev.inducibilityClosed

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
