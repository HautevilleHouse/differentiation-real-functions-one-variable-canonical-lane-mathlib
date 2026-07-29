import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.DifferentiationRealFunctionsPackage

/-!
# Geometrization Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure GeometrizationPackage (D : DifferentiationRealFunctionsPackage) where
  taylorExpansion : Prop
  meanValueTheorem : Prop
  fundamentalTheorem : Prop
  functionReconstruction : Prop

def GeometrizationClosed (D : DifferentiationRealFunctionsPackage) (Z : GeometrizationPackage D) : Prop :=
  Z.taylorExpansion ∧ Z.meanValueTheorem ∧ Z.fundamentalTheorem ∧ Z.functionReconstruction

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse