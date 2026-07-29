import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure RationalApproximationPackage {S : SimpleContinuedFractionPackage}
    {C : SimpleContinuedFractionEvidence S} {P : ConvergencePackage C} where
  bestApproximationProperty : Prop
  diophantineApproximation : Prop
  mediantProperty : Prop
  bestApproximationPropertyClosed : bestApproximationProperty
  diophantineApproximationClosed : diophantineApproximation
  mediantPropertyClosed : mediantProperty

structure RationalApproximationEvidence {S : SimpleContinuedFractionPackage}
    {C : SimpleContinuedFractionEvidence S} {P : ConvergencePackage C}
    (R : RationalApproximationPackage S C P) where
  bestApproximationPropertyClosed : R.bestApproximationProperty
  diophantineApproximationClosed : R.diophantineApproximation
  mediantPropertyClosed : R.mediantProperty

def RationalApproximationClosed {S : SimpleContinuedFractionPackage}
    {C : SimpleContinuedFractionEvidence S} {P : ConvergencePackage C}
    (R : RationalApproximationPackage S C P) : Prop :=
  R.bestApproximationProperty ∧ R.diophantineApproximation ∧ R.mediantProperty

theorem rational_approximation_closed_from_evidence {S : SimpleContinuedFractionPackage}
    {C : SimpleContinuedFractionEvidence S} {P : ConvergencePackage C}
    (R : RationalApproximationPackage S C P) (E : RationalApproximationEvidence R) :
    RationalApproximationClosed R :=
  And.intro E.bestApproximationPropertyClosed
    (And.intro E.diophantineApproximationClosed E.mediantPropertyClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse