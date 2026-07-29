import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure DiagnosticInferencePackage where
  priorProbabilities : Type u
  likelihoodFunctions : Type v
  posteriorCalculation : Prop
  decisionRule : Prop
  calibration : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  posteriorCalculationClosed : D.posteriorCalculation
  decisionRuleClosed : D.decisionRule
  calibrationClosed : D.calibration

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.posteriorCalculation ∧ D.decisionRule ∧ D.calibration

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.posteriorCalculationClosed (And.intro E.decisionRuleClosed E.calibrationClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse