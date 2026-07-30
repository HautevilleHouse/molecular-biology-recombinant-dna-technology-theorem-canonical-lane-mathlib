import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RestrictionDigest where
  enzyme : PrimitiveRestrictionEnzyme
  dna : PrimitiveInsert
  digestionComplete : Prop
  digestionCompleteTerm : digestionComplete

structure GelPurification where
  fragmentSize : Nat
  bandExtracted : Prop
  bandExtractedTerm : bandExtracted

structure LigationReaction where
  insert : PrimitiveInsert
  vector : PrimitiveVector
  ligasePresent : Prop
  ligationSuccess : Prop
  ligasePresentTerm : ligasePresent
  ligationSuccessTerm : ligationSuccess

def RestrictionCloningClosed (R : RestrictionDigest) (L : LigationReaction) : Prop :=
  R.digestionComplete ∧ L.ligationSuccess

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
