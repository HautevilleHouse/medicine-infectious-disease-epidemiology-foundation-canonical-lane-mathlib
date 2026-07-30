import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  susceptibleClass : Type
  infectedClass : Type
  recoveredClass : Type
  exposedClass : Option Type
  transmissionRate : Prop
  recoveryRate : Prop
  populationConstant : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transmissionRateClosed : C.transmissionRate
  recoveryRateClosed : C.recoveryRate
  populationConstantClosed : C.populationConstant

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transmissionRate ∧ C.recoveryRate ∧ C.populationConstant

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.transmissionRateClosed (And.intro E.recoveryRateClosed E.populationConstantClosed)

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse