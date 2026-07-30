import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure GeneExpressionVerificationPackage {P : DnaTechnologyBiologicalPackage} where
  promoterActivity : Prop
  transcriptionInitiation : Prop
  translationEfficiency : Prop
  proteinFunctionality : Prop

structure GeneExpressionVerificationEvidence {P : DnaTechnologyBiologicalPackage}
    (V : GeneExpressionVerificationPackage P) where
  promoterActivityClosed : V.promoterActivity
  transcriptionInitiationClosed : V.transcriptionInitiation
  translationEfficiencyClosed : V.translationEfficiency
  proteinFunctionalityClosed : V.proteinFunctionality

def GeneExpressionVerificationClosed {P : DnaTechnologyBiologicalPackage}
    (V : GeneExpressionVerificationPackage P) : Prop :=
  V.promoterActivity ∧ V.transcriptionInitiation ∧ V.translationEfficiency ∧ V.proteinFunctionality

theorem gene_expression_verification_closed_from_evidence
    {P : DnaTechnologyBiologicalPackage} (V : GeneExpressionVerificationPackage P)
    (E : GeneExpressionVerificationEvidence V) : GeneExpressionVerificationClosed V := by
  exact And.intro E.promoterActivityClosed
    (And.intro E.transcriptionInitiationClosed
      (And.intro E.translationEfficiencyClosed E.proteinFunctionalityClosed))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse