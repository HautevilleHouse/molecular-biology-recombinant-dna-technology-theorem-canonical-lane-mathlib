import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheorem

structure RecombinantDNASynthesisPackage where
  dnaLigation : LigationClosurePackage
  transformation : TransformationSelectionPackage
  expression : ExpressionAnalysisPackage
  constructVerified : Prop

structure SynthesisEvidence (S : RecombinantDNASynthesisPackage) where
  ligationClosed : LigationClosureClosed S.dnaLigation
  transformationClosed : TransformationSelectionClosed S.transformation
  expressionClosed : ExpressionAnalysisClosed S.expression
  constructVerifiedClosed : S.constructVerified

def RecombinantDNASynthesisClosed (S : RecombinantDNASynthesisPackage) : Prop :=
  LigationClosureClosed S.dnaLigation ∧
  TransformationSelectionClosed S.transformation ∧
  ExpressionAnalysisClosed S.expression ∧
  S.constructVerified

theorem recombinant_dna_synthesis_closed_from_evidence
    (S : RecombinantDNASynthesisPackage) (E : SynthesisEvidence S) :
    RecombinantDNASynthesisClosed S := by
  exact And.intro E.ligationClosed
    (And.intro E.transformationClosed
      (And.intro E.expressionClosed E.constructVerifiedClosed))

end MolecularBiologyRecombinantDnaTechnologyTheorem
end HautevilleHouse