import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure PrimitiveRestrictionEnzyme where
  recognitionSequence : String
  cutSite : Nat
  stickyEnd : Prop
  bluntEnd : Prop
  stickyEndTerm : stickyEnd
  bluntEndTerm : bluntEnd

structure PrimitiveVector where
  originReplication : Prop
  multipleCloningSite : Prop
  selectionMarker : Prop
  originReplicationTerm : originReplication
  multipleCloningSiteTerm : multipleCloningSite
  selectionMarkerTerm : selectionMarker

structure PrimitiveInsert where
  sequence : String
  size : Nat
  orf : Prop
  promoter : Prop
  sequenceTerm : sequence
  orfTerm : orf
  promoterTerm : promoter

structure PrimitiveLigation where
  insert : PrimitiveInsert
  vector : PrimitiveVector
  ligationEfficiency : Prop
  recombinantPlasmid : Prop
  ligationEfficiencyTerm : ligationEfficiency
  recombinantPlasmidTerm : recombinantPlasmid

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse
