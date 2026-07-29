import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundation

structure ClinicalEvidenceSynthesisPackage where
  studyResults : List (Float × Float) -- (effectSize, variance)
  pooledEffect : Float
  heterogeneityMeasure : Float
  evidenceConsistent : Prop

structure ClinicalEvidenceSynthesisEvidence (C : ClinicalEvidenceSynthesisPackage) where
  evidenceConsistentClosed : C.evidenceConsistent

def ClinicalEvidenceSynthesisClosed (C : ClinicalEvidenceSynthesisPackage) : Prop :=
  C.evidenceConsistent

theorem clinical_evidence_synthesis_closed_from_evidence (C : ClinicalEvidenceSynthesisPackage)
    (E : ClinicalEvidenceSynthesisEvidence C) : ClinicalEvidenceSynthesisClosed C :=
  E.evidenceConsistentClosed

end ClinicalMedicineClinicalDecisionSupportFoundation
end HautevilleHouse