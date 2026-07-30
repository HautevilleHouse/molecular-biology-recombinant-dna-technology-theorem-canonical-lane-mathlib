import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure LigationCloningPackage where
  vectorLinearized : Prop
  insertPrepared : Prop
  compatibleEnds : Prop
  ligationEfficiency : Prop
  transformationSuccess : Prop
  vectorReCircularizationPrevented : Prop

structure LigationCloningEvidence (L : LigationCloningPackage) where
  vectorLinearizedClosed : L.vectorLinearized
  insertPreparedClosed : L.insertPrepared
  compatibleEndsClosed : L.compatibleEnds
  vectorReCircularizationPreventedClosed : L.vectorReCircularizationPrevented

def LigationCloningClosed (L : LigationCloningPackage) : Prop :=
  L.vectorLinearized ∧ L.insertPrepared ∧ L.compatibleEnds ∧ L.vectorReCircularizationPrevented

theorem ligation_cloning_closed_from_evidence (L : LigationCloningPackage) (Ev : LigationCloningEvidence L) :
    LigationCloningClosed L := by
  exact And.intro Ev.vectorLinearizedClosed (And.intro Ev.insertPreparedClosed (And.intro Ev.compatibleEndsClosed Ev.vectorReCircularizationPreventedClosed))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
