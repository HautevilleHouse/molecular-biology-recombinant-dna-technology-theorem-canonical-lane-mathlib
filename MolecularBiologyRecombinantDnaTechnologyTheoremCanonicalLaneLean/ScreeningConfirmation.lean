import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure PCRScreening where
  forwardPrimer : String
  reversePrimer : String
  ampliconExpected : Nat
  ampliconObserved : Prop
  ampliconObservedTerm : ampliconObserved

structure SequencingConfirmation where
  read : String
  alignment : Prop
  alignmentTerm : alignment

structure ColonyPCR where
  colonyId : Nat
  templatePresent : Prop
  templatePresentTerm : templatePresent

def ScreeningClosed (P : PCRScreening) (C : ColonyPCR) : Prop :=
  P.ampliconObserved ∧ C.templatePresent ∧ P.ampliconObserved

theorem screening_endgame (P : PCRScreening) (C : ColonyPCR) : ScreeningClosed P C := by
  exact And.intro P.ampliconObservedTerm C.templatePresentTerm

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
