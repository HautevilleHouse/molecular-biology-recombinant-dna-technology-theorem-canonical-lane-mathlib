import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean

structure PromoterPackage where
  promoterSequence : String
  strength : Nat
  inducible : Bool

structure ExpressionVector where
  originOfReplication : String
  multipleCloningSite : List String
  selectableMarker : String

def GeneExpressionClosed (P : PromoterPackage) (V : ExpressionVector) : Prop :=
  P.strength > 0 ∧ V.multipleCloningSite.length > 0 ∧ V.selectableMarker ≠ ""

theorem gene_expression_system (P : PromoterPackage) (V : ExpressionVector) : GeneExpressionClosed P V := by
  exact And.intro (by
    have : P.strength > 0 := by
      exact Nat.zero_lt_succ _
    exact this) (And.intro (by
      have : V.multipleCloningSite.length > 0 := by
        exact List.length_pos_iff_exists_mem.mpr (List.exists_mem_of_ne_nil (by
          exact List.ne_nil_of_mem (by
            exact List.mem_of_mem_head? (by
              trivial))))
      exact this) (by
      have : V.selectableMarker ≠ "" := by
        exact String.ne_empty_of_mem (by
          exact String.mem_singleton_self _)
      exact this))

end MolecularBiologyRecombinantDnaTechnologyTheoremCanonicalLaneLean
end HautevilleHouse