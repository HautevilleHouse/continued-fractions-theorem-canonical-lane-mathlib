import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ConvergencePackage {S : SimpleContinuedFractionPackage} (C : SimpleContinuedFractionEvidence S) where
  limitExists : Prop
  limitValue : ℝ
  rateOfConvergence : Prop
  errorEstimate : Prop
  limitExistsClosed : limitExists
  rateOfConvergenceClosed : rateOfConvergence
  errorEstimateClosed : errorEstimate

structure ConvergenceEvidence {S : SimpleContinuedFractionPackage} {C : SimpleContinuedFractionEvidence S}
    (P : ConvergencePackage C) where
  limitExistsClosed : P.limitExists
  limitValueComputed : ℕ → ℚ
  rateOfConvergenceClosed : P.rateOfConvergence
  errorEstimateClosed : P.errorEstimate

def ConvergenceClosed {S : SimpleContinuedFractionPackage} {C : SimpleContinuedFractionEvidence S}
    (P : ConvergencePackage C) : Prop :=
  P.limitExists ∧ P.rateOfConvergence ∧ P.errorEstimate

theorem convergence_closed_from_evidence {S : SimpleContinuedFractionPackage}
    {C : SimpleContinuedFractionEvidence S} (P : ConvergencePackage C)
    (E : ConvergenceEvidence P) : ConvergenceClosed P :=
  And.intro E.limitExistsClosed (And.intro E.rateOfConvergenceClosed E.errorEstimateClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse