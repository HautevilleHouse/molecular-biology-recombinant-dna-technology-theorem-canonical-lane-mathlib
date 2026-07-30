import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheorem

structure RestrictionEnzymeDigestion where
  enzymeName : String
  recognitionSite : String
  cutsAt : Nat
  bufferCondition : String
  digestionComplete : Prop

structure DigestionEvidence (D : RestrictionEnzymeDigestion) where
  enzymeValid : D.enzymeName ≠ ""
  recognitionSitePresent : D.recognitionSite ≠ ""
  bufferAppropriate : D.bufferCondition ≠ ""
  digestionCompleteClosed : D.digestionComplete

def RestrictionEnzymeDigestionClosed (D : RestrictionEnzymeDigestion) : Prop :=
  D.enzymeName ≠ "" ∧ D.recognitionSite ≠ "" ∧ D.digestionComplete

theorem restriction_enzyme_digestion_closed_from_evidence
    (D : RestrictionEnzymeDigestion) (E : DigestionEvidence D) :
    RestrictionEnzymeDigestionClosed D := by
  exact And.intro E.enzymeValid
    (And.intro E.recognitionSitePresent E.digestionCompleteClosed)

end MolecularBiologyRecombinantDnaTechnologyTheorem
end HautevilleHouse