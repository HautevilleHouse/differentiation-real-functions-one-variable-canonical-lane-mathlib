import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.DifferentiabilityAdmittedObject

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure InverseFunctionTheoremPackage where
  function : DifferentiabilityAdmittedObject
  inverseFunction : DifferentiabilityAdmittedObject
  derivativeNonzero : Prop
  inverseDifferentiabilityStatement : Prop

structure InverseFunctionTheoremEvidence (I : InverseFunctionTheoremPackage) where
  derivativeNonzeroClosed : I.derivativeNonzero
  inverseDifferentiabilityStatementClosed : I.inverseDifferentiabilityStatement

def InverseFunctionTheoremClosed (I : InverseFunctionTheoremPackage) : Prop :=
  I.derivativeNonzero ∧ I.inverseDifferentiabilityStatement

theorem inverse_function_theorem_closed_from_evidence (I : InverseFunctionTheoremPackage) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeNonzeroClosed E.inverseDifferentiabilityStatementClosed

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
