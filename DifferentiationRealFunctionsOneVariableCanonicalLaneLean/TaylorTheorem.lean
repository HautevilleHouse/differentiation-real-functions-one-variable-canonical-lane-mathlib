import DifferentiationRealFunctionsOneVariableCanonicalLaneLean.DifferentiabilityAdmittedObject

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableCanonicalLaneLean

structure TaylorTheoremPackage where
  function : DifferentiabilityAdmittedObject
  expansionOrder : ℕ
  remainderFormula : Prop
  taylorExpansionStatement : Prop

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  remainderFormulaClosed : T.remainderFormula
  taylorExpansionStatementClosed : T.taylorExpansionStatement

def TaylorTheoremClosed (T : TaylorTheoremPackage) : Prop :=
  T.remainderFormula ∧ T.taylorExpansionStatement

theorem taylor_theorem_closed_from_evidence (T : TaylorTheoremPackage) (E : TaylorTheoremEvidence T) :
    TaylorTheoremClosed T := by
  exact And.intro E.remainderFormulaClosed E.taylorExpansionStatementClosed

end DifferentiationRealFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
