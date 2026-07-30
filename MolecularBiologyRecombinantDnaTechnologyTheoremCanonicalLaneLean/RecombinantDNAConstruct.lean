import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheorem

structure RecombinantDNAConstruct where
  insertSequence : String
  vectorSequence : String
  restrictionSite : String
  ligaseEfficiency : Float
  recombinantStable : Prop

structure VectorReplicationPackage where
  originOfReplication : String
  selectableMarker : Prop
  copyNumber : Nat

structure RecombinantDNAEvidence (R : RecombinantDNAConstruct) where
  insertSequenceValid : R.insertSequence ≠ ""
  vectorSequenceValid : R.vectorSequence ≠ ""
  restrictionSitePresent : Prop
  ligationEfficiencySufficient : R.ligaseEfficiency > 0.5
  recombinantStableClosed : R.recombinantStable

def RecombinantDNAConstructClosed (R : RecombinantDNAConstruct) : Prop :=
  R.insertSequence ≠ "" ∧ R.vectorSequence ≠ "" ∧ R.recombinantStable

theorem recombinant_dna_construct_closed_from_evidence
    (R : RecombinantDNAConstruct) (E : RecombinantDNAEvidence R) :
    RecombinantDNAConstructClosed R := by
  exact And.intro E.insertSequenceValid
    (And.intro E.vectorSequenceValid E.recombinantStableClosed)

end MolecularBiologyRecombinantDnaTechnologyTheorem
end HautevilleHouse