import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure ClinicalPredictionModelPackage where
  predictorVariables : List String
  outcomeVariable : String
  regressionCoefficients : String → Float
  intercept : Float
  logitFunction : Prop
  predictedProbability : Prop
  aucRoc : Prop

structure ClinicalPredictionModelEvidence (C : ClinicalPredictionModelPackage) where
  logitFunctionClosed : C.logitFunction
  predictedProbabilityClosed : C.predictedProbability
  aucRocClosed : C.aucRoc

def ClinicalPredictionModelClosed (C : ClinicalPredictionModelPackage) : Prop :=
  C.logitFunction ∧ C.predictedProbability ∧ C.aucRoc

theorem clinical_prediction_model_closed_from_evidence (C : ClinicalPredictionModelPackage) (E : ClinicalPredictionModelEvidence C) :
    ClinicalPredictionModelClosed C := by
  exact And.intro E.logitFunctionClosed (And.intro E.predictedProbabilityClosed E.aucRocClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse