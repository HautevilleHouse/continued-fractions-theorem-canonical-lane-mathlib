import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsTheoremCanonicalLaneLean

structure GaloisTheoremPackage where
  quadraticIrrational : QuadraticIrrationalPackage
  periodicExpansion : Prop
  purelyPeriodicCondition : Prop
  reducedForm : Prop
  galoisConjugateExpansion : Prop

structure GaloisTheoremEvidence (G : GaloisTheoremPackage) where
  periodicExpansionClosed : G.periodicExpansion
  purelyPeriodicConditionClosed : G.purelyPeriodicCondition
  reducedFormClosed : G.reducedForm
  galoisConjugateExpansionClosed : G.galoisConjugateExpansion

def GaloisTheoremClosed (G : GaloisTheoremPackage) : Prop :=
  G.periodicExpansion ∧ G.purelyPeriodicCondition ∧ G.reducedForm ∧ G.galoisConjugateExpansion

theorem galois_theorem_closed_from_evidence (G : GaloisTheoremPackage) (E : GaloisTheoremEvidence G) :
    GaloisTheoremClosed G := by
  exact And.intro E.periodicExpansionClosed (And.intro E.purelyPeriodicConditionClosed (And.intro E.reducedFormClosed E.galoisConjugateExpansionClosed))

end ContinuedFractionsTheoremCanonicalLaneLean
end HautevilleHouse