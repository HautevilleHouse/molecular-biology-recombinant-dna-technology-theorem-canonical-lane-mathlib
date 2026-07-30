import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RecombinantConstruction {P : DnaTechnologyBiologicalPackage} where
  targetGeneInsertion : Prop
  vectorSelfLigationSuppression : Prop
  hostTransformation : Prop
  recombinantSelection : Prop

structure RecombinantConstructionEvidence {P : DnaTechnologyBiologicalPackage} (C : RecombinantConstruction P) where
  targetGeneInsertionClosed : C.targetGeneInsertion
  vectorSelfLigationSuppressionClosed : C.vectorSelfLigationSuppression
  hostTransformationClosed : C.hostTransformation
  recombinantSelectionClosed : C.recombinantSelection

def RecombinantConstructionClosed {P : DnaTechnologyBiologicalPackage} (C : RecombinantConstruction P) : Prop :=
  C.targetGeneInsertion ∧ C.vectorSelfLigationSuppression ∧ C.hostTransformation ∧ C.recombinantSelection

theorem recombinant_construction_closed_from_evidence
    {P : DnaTechnologyBiologicalPackage} (C : RecombinantConstruction P)
    (E : RecombinantConstructionEvidence C) : RecombinantConstructionClosed C := by
  exact And.intro E.targetGeneInsertionClosed
    (And.intro E.vectorSelfLigationSuppressionClosed
      (And.intro E.hostTransformationClosed E.recombinantSelectionClosed))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse