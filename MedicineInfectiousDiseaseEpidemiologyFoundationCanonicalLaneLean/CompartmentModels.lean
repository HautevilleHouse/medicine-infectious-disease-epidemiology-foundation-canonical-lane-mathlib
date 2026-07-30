import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  susceptible : Type u
  exposed : Type v
  infectious : Type w
  recovered : Type x
  transitionRates : Prop
  populationConstant : Prop
  diseaseFreeEquilibrium : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transitionRatesClosed : C.transitionRates
  populationConstantClosed : C.populationConstant
  diseaseFreeEquilibriumClosed : C.diseaseFreeEquilibrium

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transitionRates ∧ C.populationConstant ∧ C.diseaseFreeEquilibrium

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.transitionRatesClosed
    (And.intro E.populationConstantClosed E.diseaseFreeEquilibriumClosed)

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse