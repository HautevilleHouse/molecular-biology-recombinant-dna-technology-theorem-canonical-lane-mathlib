import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure DnaTechnologyBiologicalPackage where
  restrictionEnzymeSystem : Type u
  vectorConstruct : Type v
  hostOrganism : Type w
  plasmidStability : Prop
  geneExpression : Prop
  recombinationEfficiency : Prop
  selectionMarker : Prop

structure DnaTechnologyBiologicalEvidence (P : DnaTechnologyBiologicalPackage) where
  plasmidStabilityClosed : P.plasmidStability
  geneExpressionClosed : P.geneExpression
  recombinationEfficiencyClosed : P.recombinationEfficiency
  selectionMarkerClosed : P.selectionMarker

def DnaTechnologyBiologicalClosed (P : DnaTechnologyBiologicalPackage) : Prop :=
  P.plasmidStability ∧ P.geneExpression ∧ P.recombinationEfficiency ∧ P.selectionMarker

theorem dna_technology_biological_closed_from_evidence
    (P : DnaTechnologyBiologicalPackage) (E : DnaTechnologyBiologicalEvidence P) :
    DnaTechnologyBiologicalClosed P := by
  exact And.intro E.plasmidStabilityClosed
    (And.intro E.geneExpressionClosed
      (And.intro E.recombinationEfficiencyClosed E.selectionMarkerClosed))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse