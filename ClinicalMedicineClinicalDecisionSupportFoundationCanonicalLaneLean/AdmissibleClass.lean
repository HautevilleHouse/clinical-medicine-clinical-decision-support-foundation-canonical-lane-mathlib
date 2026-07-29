import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure AdmittedClinicalObject where
  patientPopulation : String
  intervention : String
  comparator : String
  outcome : String
  studyDesign : String
  evidenceLevel : ℕ
  conclusion : Prop

structure AdmissibleClass where
  object : AdmittedClinicalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse