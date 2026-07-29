import MObiusGeometriesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MObiusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MObiusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse