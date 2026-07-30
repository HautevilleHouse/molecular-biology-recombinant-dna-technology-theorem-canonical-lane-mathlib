import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure CompetentCell where
  strain : String
  efficiency : Prop
  competencyTerm : efficiency

structure TransformationEvent where
  cell : CompetentCell
  plasmid : PrimitiveLigation
  heatShock : Prop
  uptake : Prop
  heatShockTerm : heatShock
  uptakeTerm : uptake

structure SelectionAgent where
  antibiotic : String
  concentration : Prop
  resistanceGenePresent : Prop
  concentrationTerm : concentration
  resistanceGenePresentTerm : resistanceGenePresent

def TransformationSelectionClosed (T : TransformationEvent) (S : SelectionAgent) : Prop :=
  T.uptake ∧ S.resistanceGenePresent

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
