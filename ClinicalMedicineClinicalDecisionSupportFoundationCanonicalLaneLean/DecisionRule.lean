import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure DecisionRulePackage where
  threshold : Type u
  costFunction : Type v
  utilityFunction : Type w
  optimalDecision : Prop
  costSensitivity : Prop
  utilityDominance : Prop

structure DecisionRuleEvidence (D : DecisionRulePackage) where
  optimalDecisionClosed : D.optimalDecision
  costSensitivityClosed : D.costSensitivity
  utilityDominanceClosed : D.utilityDominance

def DecisionRuleClosed (D : DecisionRulePackage) : Prop :=
  D.optimalDecision ∧ D.costSensitivity ∧ D.utilityDominance

theorem decision_rule_closed_from_evidence (D : DecisionRulePackage)
    (E : DecisionRuleEvidence D) : DecisionRuleClosed D := by
  exact And.intro E.optimalDecisionClosed
    (And.intro E.costSensitivityClosed E.utilityDominanceClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse