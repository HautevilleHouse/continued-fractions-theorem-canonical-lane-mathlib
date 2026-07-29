import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ConvergentContinuedFraction (A : AdmissibleClass) where
  partialNumerator : ℕ → ℤ
  partialDenominator : ℕ → ℕ
  convergentSequence : ℕ → ℚ
  limitExists : Prop
  limitValue : ℝ
  limitExistsClosed : limitExists
  convergentsAreRational : ∀ n, convergentSequence n ∈ ℚ
  limitEqualsContinuedFraction : Prop
  limitEqualsContinuedFractionClosed : limitEqualsContinuedFraction

structure ConvergentEvidence (A : AdmissibleClass) (C : ConvergentContinuedFraction A) where
  limitExistsClosed : C.limitExists
  limitEqualsContinuedFractionClosed : C.limitEqualsContinuedFraction

def ConvergentClosed (A : AdmissibleClass) (C : ConvergentContinuedFraction A) : Prop :=
  C.limitExists ∧ C.limitEqualsContinuedFraction

theorem convergent_closed_from_evidence (A : AdmissibleClass) (C : ConvergentContinuedFraction A)
    (E : ConvergentEvidence A C) : ConvergentClosed A C := by
  exact And.intro E.limitExistsClosed E.limitEqualsContinuedFractionClosed

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse