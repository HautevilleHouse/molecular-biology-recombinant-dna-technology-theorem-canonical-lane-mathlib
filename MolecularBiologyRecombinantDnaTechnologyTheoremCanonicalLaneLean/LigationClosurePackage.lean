import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheorem

structure LigationClosurePackage where
  insertEnds : String
  vectorEnds : String
  ligaseConcentration : Float
  temperature : Float
  ligationSuccess : Prop

structure LigationEvidence (L : LigationClosurePackage) where
  endsComplementary : L.insertEnds = L.vectorEnds
  ligaseActivity : L.ligaseConcentration > 0.1
  temperatureOptimal : L.temperature > 4.0 ∧ L.temperature < 37.0
  ligationSuccessClosed : L.ligationSuccess

def LigationClosureClosed (L : LigationClosurePackage) : Prop :=
  L.insertEnds = L.vectorEnds ∧ L.ligationSuccess

theorem ligation_closure_closed_from_evidence
    (L : LigationClosurePackage) (E : LigationEvidence L) :
    LigationClosureClosed L := by
  exact And.intro E.endsComplementary E.ligationSuccessClosed

end MolecularBiologyRecombinantDnaTechnologyTheorem
end HautevilleHouse