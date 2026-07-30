import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure InfectionModelPackage where
  transmissionRate : Prop
  recoveryRate : Prop
  mortalityRate : Prop
  incubationPeriod : Prop
  infectiousPeriod : Prop
  basicReproductiveNumber : Prop
  herdImmunityThreshold : Prop

structure InfectionModelEvidence (I : InfectionModelPackage) where
  transmissionRateClosed : I.transmissionRate
  recoveryRateClosed : I.recoveryRate
  mortalityRateClosed : I.mortalityRate
  incubationPeriodClosed : I.incubationPeriod
  infectiousPeriodClosed : I.infectiousPeriod
  basicReproductiveNumberClosed : I.basicReproductiveNumber
  herdImmunityThresholdClosed : I.herdImmunityThreshold

def InfectionModelClosed (I : InfectionModelPackage) : Prop :=
  I.transmissionRate ∧ I.recoveryRate ∧ I.mortalityRate ∧ I.incubationPeriod ∧ I.infectiousPeriod ∧ I.basicReproductiveNumber ∧ I.herdImmunityThreshold

theorem infection_model_closed_from_evidence (I : InfectionModelPackage) (E : InfectionModelEvidence I) :
    InfectionModelClosed I := by
  exact And.intro E.transmissionRateClosed (And.intro E.recoveryRateClosed (And.intro E.mortalityRateClosed (And.intro E.incubationPeriodClosed (And.intro E.infectiousPeriodClosed (And.intro E.basicReproductiveNumberClosed E.herdImmunityThresholdClosed)))))

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse