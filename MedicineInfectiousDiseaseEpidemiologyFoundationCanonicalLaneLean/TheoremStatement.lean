import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean

structure EpidemicAdmittedObject where
  populationModel : Type
  compartmentStructure : Prop
  transmissionParameters : Prop
  reproductionNumber : Prop
  conclusion : compartmentStructure ∧ transmissionParameters ∧ reproductionNumber

def EpidemicWitnessClosed (O : EpidemicAdmittedObject) : Prop :=
  O.compartmentStructure ∧ O.transmissionParameters ∧ O.reproductionNumber

end MedicineInfectiousDiseaseEpidemiologyFoundationCanonicalLaneLean
end HautevilleHouse