import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheorem

structure ExpressionAnalysisPackage where
  promoter : String
  terminator : String
  reporterGene : String
  inductionCondition : String
  expressionLevel : Float
  expressionDetected : Prop

structure ExpressionEvidence (E : ExpressionAnalysisPackage) where
  promoterFunctional : E.promoter ≠ ""
  terminatorFunctional : E.terminator ≠ ""
  reporterAssayValid : E.reporterGene ≠ ""
  inductionAppropriate : E.inductionCondition ≠ ""
  expressionLevelSignificant : E.expressionLevel > 2.0
  expressionDetectedClosed : E.expressionDetected

def ExpressionAnalysisClosed (E : ExpressionAnalysisPackage) : Prop :=
  E.expressionLevel > 2.0 ∧ E.expressionDetected

theorem expression_analysis_closed_from_evidence
    (E : ExpressionAnalysisPackage) (Ev : ExpressionEvidence E) :
    ExpressionAnalysisClosed E := by
  exact And.intro Ev.expressionLevelSignificant Ev.expressionDetectedClosed

end MolecularBiologyRecombinantDnaTechnologyTheorem
end HautevilleHouse