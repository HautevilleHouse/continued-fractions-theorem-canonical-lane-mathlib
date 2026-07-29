import PoincareConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ContinuedFractionExpansionPackage (α : Type) [CommSemiring α] [LinearOrderedCommSemiring α] where
  x : α
  integerPart : ℤ
  fractionalPart : α
  partialQuotients : ℕ → ℕ
  expansionCondition : integerPart = ⌊x⌋ ∧ fractionalPart = x - (integerPart : α) ∧
    (∀ n : ℕ, partialQuotients n > 0)

structure ContinuedFractionExpansionEvidence {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α]
    (E : ContinuedFractionExpansionPackage α) where
  expansionConditionClosed : E.integerPart = ⌊E.x⌋ ∧ E.fractionalPart = E.x - (E.integerPart : α) ∧
    (∀ n : ℕ, E.partialQuotients n > 0)

def ContinuedFractionExpansionClosed {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α]
    (E : ContinuedFractionExpansionPackage α) : Prop :=
  E.integerPart = ⌊E.x⌋ ∧ E.fractionalPart = E.x - (E.integerPart : α) ∧
    (∀ n : ℕ, E.partialQuotients n > 0)

theorem continued_fraction_expansion_closed_from_evidence
    {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α]
    (E : ContinuedFractionExpansionPackage α) (Ev : ContinuedFractionExpansionEvidence E) :
    ContinuedFractionExpansionClosed E := by
  exact Ev.expansionConditionClosed

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse