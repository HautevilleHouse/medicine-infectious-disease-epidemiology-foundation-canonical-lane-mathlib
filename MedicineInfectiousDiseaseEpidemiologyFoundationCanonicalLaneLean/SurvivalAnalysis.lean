import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Type u
  survivalFunction : Type v
  censoringMechanism : Prop
  proportionalHazards : Prop
  coxModelFitted : Prop
  kaplanMeierEstimator : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  coxModelFittedClosed : S.coxModelFitted
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringMechanism ∧ S.proportionalHazards ∧
  S.coxModelFitted ∧ S.kaplanMeierEstimator

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.censoringMechanismClosed
    (And.intro E.proportionalHazardsClosed
      (And.intro E.coxModelFittedClosed E.kaplanMeierEstimatorClosed))

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse