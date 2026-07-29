import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure ContinuedFractionObject where
  sequence : Nat -> ℚ
  indexing : Nat -> ℕ
  convergents : Nat -> ℚ
  limitExists : Prop
  limitExistsTerm : limitExists

def ContinuedFractionClosed (O : ContinuedFractionObject) : Prop :=
  O.limitExists

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse