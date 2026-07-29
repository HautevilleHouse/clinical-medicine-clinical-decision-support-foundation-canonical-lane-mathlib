import ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure ClinicalAdmittedObject where
  carrier : Type
  diagnosticModel : Prop
  validatedEndpoint : Prop
  conclusion : validatedEndpoint

structure ClinicalWitnessClosed (O : ClinicalAdmittedObject) : Prop where
  out : O.validatedEndpoint

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse