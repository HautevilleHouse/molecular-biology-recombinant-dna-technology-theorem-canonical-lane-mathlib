import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure ReporterGeneAssay where
  reporter : String
  activity : Prop
  foldChange : Nat
  activityTerm : activity

structure PhenotypicAssay where
  phenotype : String
  observed : Prop
  rescue : Prop
  observedTerm : observed
  rescueTerm : rescue

structure BindingAssay where
  target : String
  bindingAffinity : Prop
  affinityTerm : bindingAffinity

def FunctionalAssayClosed (R : ReporterGeneAssay) (P : PhenotypicAssay) : Prop :=
  R.activity ∧ P.observed

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
