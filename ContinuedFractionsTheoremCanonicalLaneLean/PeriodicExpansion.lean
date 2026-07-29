import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsTheoremCanonicalLaneLean.ContinuedFractionObject

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure PeriodicExpansionPackage (O : ContinuedFractionObject) where
  eventuallyPeriodic : Prop
  periodLength : ℕ
  quadraticIrrational : Prop
  lagrangeConstant : Prop

structure PeriodicExpansionEvidence {O : ContinuedFractionObject} (P : PeriodicExpansionPackage O) where
  eventuallyPeriodicClosed : P.eventuallyPeriodic
  periodLengthClosed : P.periodLength > 0
  quadraticIrrationalClosed : P.quadraticIrrational
  lagrangeConstantClosed : P.lagrangeConstant

def PeriodicExpansionClosed {O : ContinuedFractionObject} (P : PeriodicExpansionPackage O) : Prop :=
  P.eventuallyPeriodic ∧ P.periodLength > 0 ∧ P.quadraticIrrational ∧ P.lagrangeConstant

theorem periodic_expansion_closed_from_evidence
    {O : ContinuedFractionObject} (P : PeriodicExpansionPackage O)
    (E : PeriodicExpansionEvidence P) : PeriodicExpansionClosed P := by
  exact And.intro E.eventuallyPeriodicClosed
    (And.intro E.periodLengthClosed
      (And.intro E.quadraticIrrationalClosed E.lagrangeConstantClosed))

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse