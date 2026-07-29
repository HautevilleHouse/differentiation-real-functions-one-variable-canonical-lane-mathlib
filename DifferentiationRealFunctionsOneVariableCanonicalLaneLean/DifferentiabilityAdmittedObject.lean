import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiabilityAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  functionType : Type
  derivativeExists : Prop
  derivativeFormula : Prop
  conclusion : derivativeExists

def DifferentiabilityWitnessClosed (O : DifferentiabilityAdmittedObject) : Prop :=
  O.derivativeExists

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
