import HautevilleHouse.ContinuedFractionsTheoremCanonicalLaneLean.RationalApproximation

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure PeriodicExpansionPackage where
  periodicRecognized : Prop
  quadraticIrrational : Prop
  lagrangeTheorem : Prop

structure PeriodicExpansionEvidence (P : PeriodicExpansionPackage) where
  periodicRecognizedClosed : P.periodicRecognized
  quadraticIrrationalClosed : P.quadraticIrrational
  lagrangeTheoremClosed : P.lagrangeTheorem

def PeriodicExpansionClosed (P : PeriodicExpansionPackage) : Prop :=
  P.periodicRecognized ∧ P.quadraticIrrational ∧ P.lagrangeTheorem

theorem periodic_expansion_closed_from_evidence (P : PeriodicExpansionPackage) (E : PeriodicExpansionEvidence P) : PeriodicExpansionClosed P :=
  And.intro E.periodicRecognizedClosed (And.intro E.quadraticIrrationalClosed E.lagrangeTheoremClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse