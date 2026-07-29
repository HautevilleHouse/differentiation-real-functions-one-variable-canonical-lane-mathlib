import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure DifferentiabilityPackage where
  function : Type u
  domain : Type v
  openDomain : Prop
  derivative : Type w
  derivativeExists : Prop
  derivativeUnique : Prop

def differentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.openDomain ∧ D.derivativeExists ∧ D.derivativeUnique

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  openDomainClosed : D.openDomain
  derivativeExistsClosed : D.derivativeExists
  derivativeUniqueClosed : D.derivativeUnique

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage)
    (E : DifferentiabilityEvidence D) : differentiabilityClosed D := by
  exact And.intro E.openDomainClosed (And.intro E.derivativeExistsClosed E.derivativeUniqueClosed)

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse