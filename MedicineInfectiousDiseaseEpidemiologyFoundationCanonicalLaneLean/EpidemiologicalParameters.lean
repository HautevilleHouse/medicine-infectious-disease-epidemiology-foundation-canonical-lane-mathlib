import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure EpidemiologicalParameters where
  incubationPeriod : ℝ
  infectiousPeriod : ℝ
  mortalityRate : ℝ
  caseFatalityRate : ℝ
  serialInterval : ℝ

def EpidemiologicalParametersClosed (E : EpidemiologicalParameters) : Prop :=
  E.incubationPeriod > 0 ∧ E.infectiousPeriod > 0 ∧ E.caseFatalityRate ≥ 0

theorem epidemiological_parameters_closed (E : EpidemiologicalParameters) (h : EpidemiologicalParametersClosed E) : EpidemiologicalParametersClosed E := h

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse