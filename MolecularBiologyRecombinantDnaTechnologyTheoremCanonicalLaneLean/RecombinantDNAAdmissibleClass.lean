import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure RecombinantDNAAdmissibleObject where
  hostOrganism : Type
  vectorPlasmid : Type
  insertGene : Type
  transformationSuccessful : Prop
  expressionDetected : Prop
  conclusion : transformationSuccessful ∧ expressionDetected

structure AdmissibleClass where
  object : RecombinantDNAAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.transformationSuccessful ∧ A.object.expressionDetected) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse