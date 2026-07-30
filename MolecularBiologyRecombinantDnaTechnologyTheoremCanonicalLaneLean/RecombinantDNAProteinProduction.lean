import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure FermentationPackage where
  bioreactorVolume : Float
  temperature : Float
  pH : Float
  inductionTime : Nat

structure PurificationPackage where
  chromatographyType : String
  yield : Float
  purity : Float

def ProteinProductionClosed (F : FermentationPackage) (P : PurificationPackage) : Prop :=
  F.bioreactorVolume > 0 ∧ F.temperature > 0 ∧ F.pH > 0 ∧ P.purity > 0.95

theorem protein_production_successful (F : FermentationPackage) (P : PurificationPackage) : ProteinProductionClosed F P := by
  have h1 : F.bioreactorVolume > 0 := by
    exact by positivity
  have h2 : F.temperature > 0 := by
    exact by positivity
  have h3 : F.pH > 0 := by
    exact by positivity
  have h4 : P.purity > 0.95 := by
    exact by positivity
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse