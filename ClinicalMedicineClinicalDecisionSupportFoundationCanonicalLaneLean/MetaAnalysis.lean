import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure MetaAnalysisPackage where
  effectSizes : List ℚ
  studyWeights : List ℚ
  pooledEffect : ℚ
  heterogeneityAssessed : Prop
  publicationBiasAssessed : Prop
  forestPlotConstructed : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  heterogeneityAssessedClosed : M.heterogeneityAssessed
  publicationBiasAssessedClosed : M.publicationBiasAssessed
  forestPlotConstructedClosed : M.forestPlotConstructed

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.heterogeneityAssessed ∧ M.publicationBiasAssessed ∧ M.forestPlotConstructed

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisPackage) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M :=
  And.intro E.heterogeneityAssessedClosed
    (And.intro E.publicationBiasAssessedClosed E.forestPlotConstructedClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse