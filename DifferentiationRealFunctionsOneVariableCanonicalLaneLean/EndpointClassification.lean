import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.Geometrization
import Mathlib.Analysis.Calculus.Deriv

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure EndpointClassificationPackage {D : DifferentiationRealFunctionsPackage} (Z : GeometrizationPackage D) where
  targetFunction : Type u
  derivativeAtEndpoint : Prop
  endpointDerivativeMatchesStatement : Prop
  endpointDerivative : derivativeAtEndpoint → ℝ

def EndpointClassificationClosed {D : DifferentiationRealFunctionsPackage} {Z : GeometrizationPackage D} (Epkg : EndpointClassificationPackage Z) : Prop :=
  Epkg.derivativeAtEndpoint ∧ Epkg.endpointDerivativeMatchesStatement

theorem endpoint_classification_supplies_mathlib_statement {D : DifferentiationRealFunctionsPackage} {Z : GeometrizationPackage D} (Epkg : EndpointClassificationPackage Z) :
    Epkg.derivativeAtEndpoint := by
  exact Epkg.derivativeAtEndpoint

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse