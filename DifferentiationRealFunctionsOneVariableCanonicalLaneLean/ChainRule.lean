import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.DifferentiabilityAdmittedObject

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure ChainRulePackage where
  outerFunction : DifferentiabilityAdmittedObject
  innerFunction : DifferentiabilityAdmittedObject
  compositionDerivativeFormula : Prop
  chainRuleStatement : Prop

structure ChainRuleEvidence (C : ChainRulePackage) where
  compositionDerivativeFormulaClosed : C.compositionDerivativeFormula
  chainRuleStatementClosed : C.chainRuleStatement

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.compositionDerivativeFormula ∧ C.chainRuleStatement

theorem chain_rule_closed_from_evidence (C : ChainRulePackage) (E : ChainRuleEvidence C) :
    ChainRuleClosed C := by
  exact And.intro E.compositionDerivativeFormulaClosed E.chainRuleStatementClosed

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
