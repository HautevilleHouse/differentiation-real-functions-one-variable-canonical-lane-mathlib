import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure LHopitalsRulePackage where
  indeterminateZeroOverZero : Prop
  indeterminateInfOverInf : Prop
  derivativeRatioLimit : Prop

structure LHopitalsRuleEvidence (L : LHopitalsRulePackage) where
  indeterminateZeroOverZeroClosed : L.indeterminateZeroOverZero
  indeterminateInfOverInfClosed : L.indeterminateInfOverInf
  derivativeRatioLimitClosed : L.derivativeRatioLimit

def LHopitalsRuleClosed (L : LHopitalsRulePackage) : Prop :=
  L.indeterminateZeroOverZero ∧ L.indeterminateInfOverInf ∧ L.derivativeRatioLimit

theorem lhopitals_rule_closed_from_evidence
    (L : LHopitalsRulePackage) (E : LHopitalsRuleEvidence L) :
    LHopitalsRuleClosed L := by
  exact And.intro E.indeterminateZeroOverZeroClosed
    (And.intro E.indeterminateInfOverInfClosed E.derivativeRatioLimitClosed)

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
