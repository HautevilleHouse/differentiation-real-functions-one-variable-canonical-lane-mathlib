import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure HigherOrderDerivativesPackage where
  nthDerivativeExists : ℕ → ℝ → Prop
  leibnizRule : Prop
  schwarzTheorem : Prop

structure HigherOrderDerivativesEvidence (H : HigherOrderDerivativesPackage) where
  nthDerivativeExistsClosed : ∀ n x, H.nthDerivativeExists n x
  leibnizRuleClosed : H.leibnizRule
  schwarzTheoremClosed : H.schwarzTheorem

def HigherOrderDerivativesClosed (H : HigherOrderDerivativesPackage) : Prop :=
  (∀ n x, H.nthDerivativeExists n x) ∧ H.leibnizRule ∧ H.schwarzTheorem

theorem higher_order_derivatives_closed_from_evidence
    (H : HigherOrderDerivativesPackage) (E : HigherOrderDerivativesEvidence H) :
    HigherOrderDerivativesClosed H := by
  exact And.intro E.nthDerivativeExistsClosed
    (And.intro E.leibnizRuleClosed E.schwarzTheoremClosed)

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
