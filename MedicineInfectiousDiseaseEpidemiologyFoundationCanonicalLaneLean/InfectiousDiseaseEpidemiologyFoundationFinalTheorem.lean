import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

def ConstrainedEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epidemiology_endgame (A : AdmissibleClass) : ConstrainedEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse
