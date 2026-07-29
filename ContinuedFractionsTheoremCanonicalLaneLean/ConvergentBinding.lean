import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsTheoremCanonicalLaneLean.ContinuedFractionObject

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ConvergentBindingPackage (O : ContinuedFractionObject) where
  recurrenceSatisfied : Prop
  convergenceRate : Prop
  bestApproximationProperty : Prop

structure ConvergentBindingEvidence {O : ContinuedFractionObject} (C : ConvergentBindingPackage O) where
  recurrenceSatisfiedClosed : C.recurrenceSatisfied
  convergenceRateClosed : C.convergenceRate
  bestApproximationPropertyClosed : C.bestApproximationProperty

def ConvergentBindingClosed {O : ContinuedFractionObject} (C : ConvergentBindingPackage O) : Prop :=
  C.recurrenceSatisfied ∧ C.convergenceRate ∧ C.bestApproximationProperty

theorem convergent_binding_closed_from_evidence
    {O : ContinuedFractionObject} (C : ConvergentBindingPackage O)
    (E : ConvergentBindingEvidence C) : ConvergentBindingClosed C := by
  exact And.intro E.recurrenceSatisfiedClosed
    (And.intro E.convergenceRateClosed E.bestApproximationPropertyClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse