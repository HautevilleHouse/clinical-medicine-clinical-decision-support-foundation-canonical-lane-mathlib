import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure SurvivalAnalysisPackage where
  timeVariable : Type u
  hazardFunction : Type v
  survivalFunction : Type w
  censoringMechanism : Prop
  proportionalHazards : Prop
  baselineHazard : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  baselineHazardClosed : S.baselineHazard

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringMechanism ∧ S.proportionalHazards ∧ S.baselineHazard

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.censoringMechanismClosed (And.intro E.proportionalHazardsClosed E.baselineHazardClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse