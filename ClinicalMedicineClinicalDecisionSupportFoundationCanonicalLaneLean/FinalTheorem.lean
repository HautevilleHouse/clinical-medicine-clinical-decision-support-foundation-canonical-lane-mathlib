import canonicalLaneMathlib.AdmissibleClass
import ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

def ConstrainedClinicalDecisionSupportClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_clinical_decision_support_endgame (A : AdmissibleClass) :
    ConstrainedClinicalDecisionSupportClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse