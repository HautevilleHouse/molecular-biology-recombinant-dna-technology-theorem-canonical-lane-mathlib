import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSequence : String
  cutPattern : String
  stickyEnds : Prop
  cleavageSiteSpecific : Prop
  isoschizomers : List String
  methylationSensitivity : Prop

structure RestrictionEnzymeEvidence (E : RestrictionEnzymePackage) where
  recognitionSequenceClosed : E.recognitionSequence ≠ ""
  cutPatternClosed : E.cutPattern ≠ ""
  cleavageSiteSpecificClosed : E.cleavageSiteSpecific
  methylationSensitivityClosed : E.methylationSensitivity

def RestrictionEnzymeClosed (E : RestrictionEnzymePackage) : Prop :=
  E.recognitionSequence ≠ "" ∧ E.cutPattern ≠ "" ∧ E.cleavageSiteSpecific ∧ E.methylationSensitivity

theorem restriction_enzyme_closed_from_evidence (E : RestrictionEnzymePackage) (Ev : RestrictionEnzymeEvidence E) :
    RestrictionEnzymeClosed E := by
  exact And.intro Ev.recognitionSequenceClosed (And.intro Ev.cutPatternClosed (And.intro Ev.cleavageSiteSpecificClosed Ev.methylationSensitivityClosed))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
