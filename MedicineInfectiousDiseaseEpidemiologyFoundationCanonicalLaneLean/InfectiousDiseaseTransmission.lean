import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure TransmissionModel where
  infectionRate : ℝ
  recoveryRate : ℝ
  basicReproductionNumber : ℝ
  vaccinationCoverage : ℝ
  herdImmunityThreshold : ℝ

def TransmissionModelClosed (T : TransmissionModel) : Prop :=
  T.basicReproductionNumber > 1 ∧ T.herdImmunityThreshold > 0

theorem transmission_model_closed (T : TransmissionModel) (h : TransmissionModelClosed T) : TransmissionModelClosed T := h

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse