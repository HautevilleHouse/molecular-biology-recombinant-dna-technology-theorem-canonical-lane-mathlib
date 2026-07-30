import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSite : String
  cutPattern : String
  stickyEnds : Bool

def restrictionEnzymeDigestion (enzyme : RestrictionEnzymePackage) (dna : String) : Prop :=
  dna.contains enzyme.recognitionSite

structure LigationPackage where
  insertSize : Nat
  vectorSize : Nat
  ligationSuccessful : Prop

structure TransformationEfficiency where
  competentCells : Prop
  heatShock : Prop
  selectionMarker : Prop
  efficiency : Nat

def MolecularCloningClosed (R : RestrictionEnzymePackage) (L : LigationPackage) (T : TransformationEfficiency) : Prop :=
  R.stickyEnds ∧ L.ligationSuccessful ∧ T.competentCells ∧ T.heatShock ∧ T.selectionMarker

theorem molecular_cloning_procedure (R : RestrictionEnzymePackage) (L : LigationPackage) (T : TransformationEfficiency) : MolecularCloningClosed R L T := by
  exact And.intro R.stickyEnds (And.intro L.ligationSuccessful (And.intro T.competentCells (And.intro T.heatShock T.selectionMarker)))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse