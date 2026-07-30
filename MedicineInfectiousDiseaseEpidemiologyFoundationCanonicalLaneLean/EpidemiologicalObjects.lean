import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure EpidemiologicalPopulation where
  carrier : Type
  demographicStructure : TopologicalSpace carrier
  contactNetwork : carrier -> carrier -> Prop
  transmissionPotential : carrier -> Real

structure DiseaseAdmittedObject where
  population : EpidemiologicalPopulation
  infectiousPathogenIdentified : Prop
  compartmentModelDefined : Prop
  reproductiveNumber : Real
  conclusion : reproductiveNumber > 1

structure DiseaseEndgameState where
  object : DiseaseAdmittedObject

def DiseaseWitnessClosed (O : DiseaseAdmittedObject) : Prop :=
  O.conclusion

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse