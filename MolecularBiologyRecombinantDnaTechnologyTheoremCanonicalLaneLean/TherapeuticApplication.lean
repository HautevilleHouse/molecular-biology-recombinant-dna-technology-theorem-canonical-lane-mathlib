import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.RecombinationEvent

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure TherapeuticApplication {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    (R : RecombinationEvent E H S) where
  targetDisease : String
  therapeuticProtein : String
  preClinicalTrials : Prop
  regulatoryApproval : Prop

structure TherapeuticEvidence {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    {R : RecombinationEvent E H S} (T : TherapeuticApplication R) where
  preClinicalTrialsClosed : T.preClinicalTrials
  regulatoryApprovalClosed : T.regulatoryApproval

def TherapeuticApplicationClosed {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    {R : RecombinationEvent E H S} (T : TherapeuticApplication R) : Prop :=
  T.preClinicalTrials ∧ T.regulatoryApproval

theorem therapeutic_application_closed_from_evidence
    {E : ExpressionSystem} {H : HostSystem E} {S : SelectionMarker E H}
    {R : RecombinationEvent E H S} (T : TherapeuticApplication R) (Ev : TherapeuticEvidence T) :
    TherapeuticApplicationClosed T := by
  exact And.intro Ev.preClinicalTrialsClosed Ev.regulatoryApprovalClosed

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
