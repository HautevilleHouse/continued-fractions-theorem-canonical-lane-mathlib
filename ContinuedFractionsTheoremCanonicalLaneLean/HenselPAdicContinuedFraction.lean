import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure HenselPAdicContinuedFraction (A : AdmissibleClass) where
  prime : ℕ
  pAdicNumber : Type
  continuedFractionExpansion : ℕ → ℤ
  convergenceInPAdic : Prop
  convergenceInPAdicClosed : convergenceInPAdic
  rationalReconstruction : Prop
  rationalReconstructionClosed : rationalReconstruction

structure HenselPAdicEvidence (A : AdmissibleClass) (H : HenselPAdicContinuedFraction A) where
  convergenceInPAdicClosed : H.convergenceInPAdic
  rationalReconstructionClosed : H.rationalReconstruction

def HenselPAdicClosed (A : AdmissibleClass) (H : HenselPAdicContinuedFraction A) : Prop :=
  H.convergenceInPAdic ∧ H.rationalReconstruction

theorem hensel_p_adic_closed_from_evidence (A : AdmissibleClass) (H : HenselPAdicContinuedFraction A)
    (E : HenselPAdicEvidence A H) : HenselPAdicClosed A H := by
  exact And.intro E.convergenceInPAdicClosed E.rationalReconstructionClosed

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse