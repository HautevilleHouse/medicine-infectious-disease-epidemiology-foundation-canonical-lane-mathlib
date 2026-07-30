import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure DiagnosticInferencePackage where
  testSensitivity : Prop
  testSpecificity : Prop
  prevalence : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  bayesRuleApplied : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  testSensitivityClosed : D.testSensitivity
  testSpecificityClosed : D.testSpecificity
  prevalenceClosed : D.prevalence
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  bayesRuleAppliedClosed : D.bayesRuleApplied

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.testSensitivity ∧ D.testSpecificity ∧ D.prevalence ∧
  D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.bayesRuleApplied

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.testSensitivityClosed
    (And.intro E.testSpecificityClosed
      (And.intro E.prevalenceClosed
        (And.intro E.positivePredictiveValueClosed
          (And.intro E.negativePredictiveValueClosed E.bayesRuleAppliedClosed))))

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse