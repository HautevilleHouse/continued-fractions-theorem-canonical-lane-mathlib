import HautevilleHouse.ContinuedFractionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ConvergencePackage where
  rateOfConvergence : Prop
  errorBound : Prop
  periodicCase : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  rateOfConvergenceClosed : C.rateOfConvergence
  errorBoundClosed : C.errorBound
  periodicCaseClosed : C.periodicCase

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.rateOfConvergence ∧ C.errorBound ∧ C.periodicCase

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) : ConvergenceClosed C :=
  And.intro E.rateOfConvergenceClosed (And.intro E.errorBoundClosed E.periodicCaseClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse