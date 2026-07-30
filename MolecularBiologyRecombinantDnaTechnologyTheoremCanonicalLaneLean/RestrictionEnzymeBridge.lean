import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RestrictionEnzymeBridge {P : DnaTechnologyBiologicalPackage} (A : AdmissibleClass) where
  enzymeRecognitionDomain : Prop
  cleavageSiteSpecificity : Prop
  stickyEndGeneration : Prop
  ligationCompatibility : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse