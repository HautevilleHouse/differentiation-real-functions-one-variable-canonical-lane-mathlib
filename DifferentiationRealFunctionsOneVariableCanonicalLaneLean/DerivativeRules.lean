import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DerivativeRulesPackage where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop
  powerRule : Prop

derivativeRulesClosed (R : DerivativeRulesPackage) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.chainRule ∧ R.quotientRule ∧ R.powerRule

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
