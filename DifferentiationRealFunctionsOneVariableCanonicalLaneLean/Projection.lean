import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def differentiationProjection : Projection DifferentiationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem differentiation_projection_idempotent (x : DifferentiationEndgameState) :
    differentiationProjection.toFun (differentiationProjection.toFun x) = differentiationProjection.toFun x := by
  exact differentiationProjection.idempotent x

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse