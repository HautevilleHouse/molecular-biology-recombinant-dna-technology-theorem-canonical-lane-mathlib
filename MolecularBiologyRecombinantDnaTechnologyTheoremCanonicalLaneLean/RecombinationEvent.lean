import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.SelectionMarker

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RecombinationEvent {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H} where
  crossoverSite : String
  integrationType : String
  homologousRecombination : Prop
  siteSpecificRecombination : Prop
  success : Prop

structure RecombinationEvidence {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    (R : RecombinationEvent E H S) where
  homologousRecombinationClosed : R.homologousRecombination
  siteSpecificRecombinationClosed : R.siteSpecificRecombination
  successClosed : R.success

def RecombinationEventClosed {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    (R : RecombinationEvent E H S) : Prop :=
  R.homologousRecombination ∧ R.siteSpecificRecombination ∧ R.success

theorem recombination_event_closed_from_evidence
    {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    (R : RecombinationEvent E H S) (Ev : RecombinationEvidence R) :
    RecombinationEventClosed R := by
  exact And.intro Ev.homologousRecombinationClosed
    (And.intro Ev.siteSpecificRecombinationClosed Ev.successClosed)

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
