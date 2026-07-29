import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.DerivativeExistence

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiationRulesPackage (P : DerivativeExistencePackage) where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  ruleConsistency : Prop

structure DifferentiationRulesEvidence {P : DerivativeExistencePackage} (R : DifferentiationRulesPackage P) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  chainRuleClosed : R.chainRule
  ruleConsistencyClosed : R.ruleConsistency

def DifferentiationRulesClosed {P : DerivativeExistencePackage} (R : DifferentiationRulesPackage P) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.chainRule ∧ R.ruleConsistency

theorem differentiation_rules_closed_from_evidence {P : DerivativeExistencePackage} (R : DifferentiationRulesPackage P) (E : DifferentiationRulesEvidence R) :
    DifferentiationRulesClosed R := by
  exact And.intro E.sumRuleClosed (And.intro E.productRuleClosed (And.intro E.chainRuleClosed E.ruleConsistencyClosed))

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse