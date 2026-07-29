import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.FinalTheorem
import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiableFunction where
  f : ℝ → ℝ
  a : ℝ
  derivative : ℝ
  differentiableAt : Prop
  conclusion : differentiableAt

def DifferentiabilityClosed (f : DifferentiableFunction) : Prop :=
  f.differentiableAt

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse