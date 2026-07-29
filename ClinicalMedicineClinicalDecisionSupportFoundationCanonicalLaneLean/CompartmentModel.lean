import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Type u
  transferRates : Type v
  massBalance : Prop
  initialConditions : Prop
  solutionExistence : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  massBalanceClosed : C.massBalance
  initialConditionsClosed : C.initialConditions
  solutionExistenceClosed : C.solutionExistence

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.massBalance ∧ C.initialConditions ∧ C.solutionExistence

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.massBalanceClosed (And.intro E.initialConditionsClosed E.solutionExistenceClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse