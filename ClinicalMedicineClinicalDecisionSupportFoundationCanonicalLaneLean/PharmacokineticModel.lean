import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : Type u
  distributionVolume : Type v
  eliminationRate : Type w
  concentrationCurve : Type x
  firstOrderKinetics : Prop
  steadyStateReachable : Prop
  linearSuperposition : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  firstOrderKineticsClosed : P.firstOrderKinetics
  steadyStateReachableClosed : P.steadyStateReachable
  linearSuperpositionClosed : P.linearSuperposition

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.firstOrderKinetics ∧ P.steadyStateReachable ∧ P.linearSuperposition

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.firstOrderKineticsClosed
    (And.intro E.steadyStateReachableClosed E.linearSuperpositionClosed)

end ClinicalMedicineClinicalDecisionSupportFoundationCanonicalLaneLean
end HautevilleHouse