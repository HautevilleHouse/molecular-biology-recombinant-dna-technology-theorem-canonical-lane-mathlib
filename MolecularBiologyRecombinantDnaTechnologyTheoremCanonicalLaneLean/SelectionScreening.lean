import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure SelectionScreeningPackage where
  antibioticResistanceMarker : Prop
  reporterGene : String
  blueWhiteScreening : Prop
  positiveSelection : Prop
  insertConfirmation : Prop

structure SelectionScreeningEvidence (S : SelectionScreeningPackage) where
  antibioticResistanceMarkerClosed : S.antibioticResistanceMarker
  reporterGeneClosed : S.reporterGene ≠ ""
  insertConfirmationClosed : S.insertConfirmation

def SelectionScreeningClosed (S : SelectionScreeningPackage) : Prop :=
  S.antibioticResistanceMarker ∧ S.reporterGene ≠ "" ∧ S.insertConfirmation

theorem selection_screening_closed_from_evidence (S : SelectionScreeningPackage) (Ev : SelectionScreeningEvidence S) :
    SelectionScreeningClosed S := by
  exact And.intro Ev.antibioticResistanceMarkerClosed (And.intro Ev.reporterGeneClosed Ev.insertConfirmationClosed)

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
