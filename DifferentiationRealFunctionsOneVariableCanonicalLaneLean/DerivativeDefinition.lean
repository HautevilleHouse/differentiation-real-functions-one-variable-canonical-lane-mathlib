import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DerivativeDefinitionPackage where
  pointDerivative : (ℝ → ℝ) → ℝ → ℝ
  limitFormulation : Prop
  linearApproximationFormulation : Prop
  caratheodoryFormulation : Prop

derivativePackageClosed (D : DerivativeDefinitionPackage) : Prop :=
  D.limitFormulation ∧ D.linearApproximationFormulation ∧ D.caratheodoryFormulation

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
