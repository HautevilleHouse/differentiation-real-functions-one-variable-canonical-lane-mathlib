import canonicalLaneMathlib.AdmissibleClass
import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentiabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
