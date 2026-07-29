import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

def ConstrainedContinuedFractionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continued_fraction_endgame (A : AdmissibleClass) :
    ConstrainedContinuedFractionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse