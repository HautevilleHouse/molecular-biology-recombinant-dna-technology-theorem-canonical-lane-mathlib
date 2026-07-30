import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure DnaAdmittedObject where
  plasmidCarrier : Type
  hostOrganism : Type
  restrictionEnzymeUsed : Prop
  insertionSuccess : Prop
  expressionObserved : Prop
  conclusion : insertionSuccess ∧ expressionObserved

def DnaWitnessClosed (O : DnaAdmittedObject) : Prop :=
  O.insertionSuccess ∧ O.expressionObserved

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse