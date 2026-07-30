import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.HostSystem

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure SelectionMarker {E : ExpressionSystem} {H : HostSystem E} where
  markerType : String
  resistanceGene : String
  selectivePressure : Prop
  stability : Prop

structure SelectionEvidence {E : ExpressionSystem} {H : HostSystem E} (S : SelectionMarker E H) where
  selectivePressureClosed : S.selectivePressure
  stabilityClosed : S.stability

def SelectionMarkerClosed {E : ExpressionSystem} {H : HostSystem E} (S : SelectionMarker E H) : Prop :=
  S.selectivePressure ∧ S.stability

theorem selection_marker_closed_from_evidence
    {E : ExpressionSystem} {H : HostSystem E} (S : SelectionMarker E H) (Ev : SelectionEvidence S) :
    SelectionMarkerClosed S := by
  exact And.intro Ev.selectivePressureClosed Ev.stabilityClosed

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
