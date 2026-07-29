import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure ClinicalTrialDesignPackage where
  randomizationScheme : Type u
  allocationConcealment : Type v
  blindingMethod : Type w
  powerCalculation : Prop
  alphaControl : Prop
  intentionToTreat : Prop

structure ClinicalTrialDesignEvidence (C : ClinicalTrialDesignPackage) where
  powerCalculationClosed : C.powerCalculation
  alphaControlClosed : C.alphaControl
  intentionToTreatClosed : C.intentionToTreat

def ClinicalTrialDesignClosed (C : ClinicalTrialDesignPackage) : Prop :=
  C.powerCalculation ∧ C.alphaControl ∧ C.intentionToTreat

theorem clinical_trial_design_closed_from_evidence (C : ClinicalTrialDesignPackage)
    (E : ClinicalTrialDesignEvidence C) : ClinicalTrialDesignClosed C := by
  exact And.intro E.powerCalculationClosed
    (And.intro E.alphaControlClosed E.intentionToTreatClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse