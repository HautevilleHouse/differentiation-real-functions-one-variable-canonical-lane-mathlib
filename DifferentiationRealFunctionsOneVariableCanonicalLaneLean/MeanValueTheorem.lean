import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure MeanValueTheoremPackage where
  differentiableOnInterval : Prop
  continuousOnInterval : Prop
  existsPointWhereDerivativeEqualsSlope : Prop

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  differentiableOnIntervalClosed : M.differentiableOnInterval
  continuousOnIntervalClosed : M.continuousOnInterval
  existsPointWhereDerivativeEqualsSlopeClosed : M.existsPointWhereDerivativeEqualsSlope

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.differentiableOnInterval ∧ M.continuousOnInterval ∧ M.existsPointWhereDerivativeEqualsSlope

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage)
    (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M := by
  exact And.intro E.differentiableOnIntervalClosed
    (And.intro E.continuousOnIntervalClosed E.existsPointWhereDerivativeEqualsSlopeClosed)

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse