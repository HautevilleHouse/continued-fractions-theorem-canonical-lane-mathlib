import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure GaussMapErgodic (A : AdmissibleClass) where
  gaussMap : ℝ → ℝ
  invariantMeasure : Type
  ergodicity : Prop
  ergodicityClosed : ergodicity
  khinchinConstantExists : Prop
  khinchinConstantExistsClosed : khinchinConstantExists
  levyConstantExists : Prop
  levyConstantExistsClosed : levyConstantExists

structure GaussMapEvidence (A : AdmissibleClass) (G : GaussMapErgodic A) where
  ergodicityClosed : G.ergodicity
  khinchinConstantExistsClosed : G.khinchinConstantExists
  levyConstantExistsClosed : G.levyConstantExists

def GaussMapClosed (A : AdmissibleClass) (G : GaussMapErgodic A) : Prop :=
  G.ergodicity ∧ G.khinchinConstantExists ∧ G.levyConstantExists

theorem gauss_map_closed_from_evidence (A : AdmissibleClass) (G : GaussMapErgodic A)
    (E : GaussMapEvidence A G) : GaussMapClosed A G := by
  exact And.intro E.ergodicityClosed
    (And.intro E.khinchinConstantExistsClosed E.levyConstantExistsClosed)

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse