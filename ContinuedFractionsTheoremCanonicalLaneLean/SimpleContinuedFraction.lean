import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure SimpleContinuedFractionPackage where
  integerPart : ℤ
  continuedFractionTerms : List ℕ
  partialQuotients : List ℕ
  convergents : List ℚ
  infiniteTerms : Prop
  convergenceGuaranteed : Prop
  convergenceGuaranteedClosed : convergenceGuaranteed

structure SimpleContinuedFractionEvidence (S : SimpleContinuedFractionPackage) where
  infiniteTermsClosed : S.infiniteTerms
  convergenceGuaranteedClosed : S.convergenceGuaranteed

def SimpleContinuedFractionClosed (S : SimpleContinuedFractionPackage) : Prop :=
  S.infiniteTerms ∧ S.convergenceGuaranteed

theorem simple_continued_fraction_closed_from_evidence (S : SimpleContinuedFractionPackage)
    (E : SimpleContinuedFractionEvidence S) : SimpleContinuedFractionClosed S :=
  And.intro E.infiniteTermsClosed E.convergenceGuaranteedClosed

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse