import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.ExpressionSystem

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure HostSystem {E : ExpressionSystem} where
  hostOrganism : String
  compatibility : Prop
  transformationEfficiency : Prop
  cultureConditions : Prop

structure HostEvidence {E : ExpressionSystem} (H : HostSystem E) where
  compatibilityClosed : H.compatibility
  transformationEfficiencyClosed : H.transformationEfficiency
  cultureConditionsClosed : H.cultureConditions

def HostSystemClosed {E : ExpressionSystem} (H : HostSystem E) : Prop :=
  H.compatibility ∧ H.transformationEfficiency ∧ H.cultureConditions

theorem host_system_closed_from_evidence
    {E : ExpressionSystem} (H : HostSystem E) (Ev : HostEvidence H) :
    HostSystemClosed H := by
  exact And.intro Ev.compatibilityClosed (And.intro Ev.transformationEfficiencyClosed Ev.cultureConditionsClosed)

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
