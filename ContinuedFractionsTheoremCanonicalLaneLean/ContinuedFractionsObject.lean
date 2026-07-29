import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ContinuedFractionAdmittedObject where
  realNumber : ℝ
  continuedFractionExpansion : ℕ → ℕ
  convergentSequence : ℕ → ℚ
  convergenceRate : Prop
  rationalApproximationQuality : Prop
  conclusion : convergenceRate ∧ rationalApproximationQuality

def ContinuedFractionWitnessClosed (O : ContinuedFractionAdmittedObject) : Prop :=
  O.convergenceRate ∧ O.rationalApproximationQuality

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse