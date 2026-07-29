import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiabilityCriteriaPackage where
  continuityCondition : Prop
  leftRightDerivativeMatch : Prop
  derivativeExistence : Prop

structure DifferentiabilityCriteriaEvidence (C : DifferentiabilityCriteriaPackage) where
  continuityConditionClosed : C.continuityCondition
  leftRightDerivativeMatchClosed : C.leftRightDerivativeMatch
  derivativeExistenceClosed : C.derivativeExistence

def DifferentiabilityCriteriaClosed (C : DifferentiabilityCriteriaPackage) : Prop :=
  C.continuityCondition ∧ C.leftRightDerivativeMatch ∧ C.derivativeExistence

theorem differentiability_criteria_closed_from_evidence
    (C : DifferentiabilityCriteriaPackage) (E : DifferentiabilityCriteriaEvidence C) :
    DifferentiabilityCriteriaClosed C := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.leftRightDerivativeMatchClosed E.derivativeExistenceClosed)

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
