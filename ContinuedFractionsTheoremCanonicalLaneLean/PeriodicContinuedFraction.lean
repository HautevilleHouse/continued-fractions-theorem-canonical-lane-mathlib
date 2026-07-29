import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure PeriodicContinuedFraction (A : AdmissibleClass) where
  prePeriodLength : ℕ
  periodLength : ℕ
  periodicBlock : List ℤ
  eventuallyPeriodic : Prop
  eventuallyPeriodicClosed : eventuallyPeriodic
  associatedQuadraticIrrational : Prop
  associatedQuadraticIrrationalClosed : associatedQuadraticIrrational
  lagrangeTheoremHolds : Prop
  lagrangeTheoremHoldsClosed : lagrangeTheoremHolds

structure PeriodicEvidence (A : AdmissibleClass) (P : PeriodicContinuedFraction A) where
  eventuallyPeriodicClosed : P.eventuallyPeriodic
  associatedQuadraticIrrationalClosed : P.associatedQuadraticIrrational
  lagrangeTheoremHoldsClosed : P.lagrangeTheoremHolds

def PeriodicClosed (A : AdmissibleClass) (P : PeriodicContinuedFraction A) : Prop :=
  P.eventuallyPeriodic ∧ P.associatedQuadraticIrrational ∧ P.lagrangeTheoremHolds

theorem periodic_closed_from_evidence (A : AdmissibleClass) (P : PeriodicContinuedFraction A)
    (E : PeriodicEvidence A P) : PeriodicClosed A P := by
  exact And.intro E.eventuallyPeriodicClosed
    (And.intro E.associatedQuadraticIrrationalClosed E.lagrangeTheoremHoldsClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse