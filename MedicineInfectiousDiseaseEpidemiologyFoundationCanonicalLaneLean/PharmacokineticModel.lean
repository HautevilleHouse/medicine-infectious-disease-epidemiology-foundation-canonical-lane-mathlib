import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure PharmacokineticPackage where
  drugConcentration : Type u
  compartments : Nat
  absorptionRate : Prop
  distributionRate : Prop
  eliminationRate : Prop
  steadyStateExists : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionRateClosed : P.distributionRate
  eliminationRateClosed : P.eliminationRate
  steadyStateExistsClosed : P.steadyStateExists

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.absorptionRate ∧ P.distributionRate ∧ P.eliminationRate ∧ P.steadyStateExists

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionRateClosed
      (And.intro E.eliminationRateClosed E.steadyStateExistsClosed))

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse