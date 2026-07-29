import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DerivativeExistencePackage where
  functionDefinedOnInterval : Prop
  pointwiseLimitExists : Prop
  derivativeValue : ℝ

structure DerivativeExistenceEvidence (D : DerivativeExistencePackage) where
  functionDefinedOnIntervalClosed : D.functionDefinedOnInterval
  pointwiseLimitExistsClosed : D.pointwiseLimitExists

structure DerivativeExistenceClosed (D : DerivativeExistencePackage) : Prop where
  existsDerivative : D.functionDefinedOnInterval ∧ D.pointwiseLimitExists

theorem derivative_existence_closed_from_evidence (D : DerivativeExistencePackage)
    (E : DerivativeExistenceEvidence D) : DerivativeExistenceClosed D := by
  exact {
    existsDerivative := And.intro E.functionDefinedOnIntervalClosed E.pointwiseLimitExistsClosed
  }

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse