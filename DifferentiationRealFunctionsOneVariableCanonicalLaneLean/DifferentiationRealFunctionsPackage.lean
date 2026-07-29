import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.RiemannianCurvature

/-!
# Differentiation Real Functions One Variable Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiationRealFunctionsPackage where
  function : Type u
  derivative : Type v
  continuity : Prop
  differentiability : Prop
  derivability : Prop
  chainRule : Prop
  productRule : Prop
  quotientRule : Prop

def DifferentiationRealFunctionsClosed (D : DifferentiationRealFunctionsPackage) : Prop :=
  D.continuity ∧ D.differentiability ∧ D.derivability ∧ D.chainRule ∧ D.productRule ∧ D.quotientRule

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse