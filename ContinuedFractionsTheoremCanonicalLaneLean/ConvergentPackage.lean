import PoincareConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ConvergentPackage (α : Type) [CommSemiring α] [LinearOrderedCommSemiring α] where
  a0 : α
  aSeq : ℕ → α
  bSeq : ℕ → α
  convergentSequence : ℕ → α
  convergentDefined : ∀ n : ℕ, convergentSequence n * bSeq n = a0 * bSeq n + aSeq n
  positivity : ∀ n : ℕ, aSeq n > 0 ∧ bSeq n > 0

structure ConvergentEvidence {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α] (C : ConvergentPackage α) where
  convergentDefinedClosed : ∀ n : ℕ, C.convergentSequence n * C.bSeq n = C.a0 * C.bSeq n + C.aSeq n
  positivityClosed : ∀ n : ℕ, C.aSeq n > 0 ∧ C.bSeq n > 0

def ConvergentClosed {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α] (C : ConvergentPackage α) : Prop :=
  (∀ n : ℕ, C.convergentSequence n * C.bSeq n = C.a0 * C.bSeq n + C.aSeq n) ∧
  (∀ n : ℕ, C.aSeq n > 0 ∧ C.bSeq n > 0)

theorem convergent_closed_from_evidence
    {α : Type} [CommSemiring α] [LinearOrderedCommSemiring α]
    (C : ConvergentPackage α) (E : ConvergentEvidence C) : ConvergentClosed C := by
  exact And.intro E.convergentDefinedClosed E.positivityClosed

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse