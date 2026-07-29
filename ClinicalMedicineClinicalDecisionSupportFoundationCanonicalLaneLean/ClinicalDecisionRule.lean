import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure ClinicalDecisionRulePackage where
  inputFeatures : Type u
  outputDecision : Type v
  ruleFunction : Type w
  correctness : Prop
  fairness : Prop
  interpretability : Prop

structure ClinicalDecisionRuleEvidence (R : ClinicalDecisionRulePackage) where
  correctnessClosed : R.correctness
  fairnessClosed : R.fairness
  interpretabilityClosed : R.interpretability

def ClinicalDecisionRuleClosed (R : ClinicalDecisionRulePackage) : Prop :=
  R.correctness ∧ R.fairness ∧ R.interpretability

theorem clinical_decision_rule_closed_from_evidence (R : ClinicalDecisionRulePackage)
    (E : ClinicalDecisionRuleEvidence R) : ClinicalDecisionRuleClosed R := by
  exact And.intro E.correctnessClosed (And.intro E.fairnessClosed E.interpretabilityClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse