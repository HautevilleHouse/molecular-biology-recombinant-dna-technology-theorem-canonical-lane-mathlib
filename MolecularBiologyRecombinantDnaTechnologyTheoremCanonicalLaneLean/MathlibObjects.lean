import MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure DNASequence where
  bases : String
  organism : String
  properties : List String

structure RecombinantConstruct where
  insert : DNASequence
  vector : DNASequence
  host : String
  stabilityEvidence : Prop
  expressionEvidence : Prop

structure AdmittedObject where
  construct : RecombinantConstruct
  transformationSuccess : Prop
  conclusion : transformationSuccess

def bridgeClosed (O : AdmittedObject) : Prop := O.transformationSuccess

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
