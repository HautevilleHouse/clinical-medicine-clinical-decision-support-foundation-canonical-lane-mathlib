import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure CompartmentPKPackage where
  compartments : Nat
  volumeOfDistribution : ℚ
  eliminationRate : ℚ
  absorptionRate : ℚ
  dose : ℚ
  plasmaConcentration : ℚ → ℚ
  initialCondition : ℚ
  differentialEquation : Prop
  solutionClosedForm : Prop

structure CompartmentPKEvidence (C : CompartmentPKPackage) where
  differentialEquationClosed : C.differentialEquation
  solutionClosedFormClosed : C.solutionClosedForm

def CompartmentPKClosed (C : CompartmentPKPackage) : Prop :=
  C.differentialEquation ∧ C.solutionClosedForm

theorem compartment_pk_closed_from_evidence (C : CompartmentPKPackage) (E : CompartmentPKEvidence C) : CompartmentPKClosed C :=
  And.intro E.differentialEquationClosed E.solutionClosedFormClosed

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse