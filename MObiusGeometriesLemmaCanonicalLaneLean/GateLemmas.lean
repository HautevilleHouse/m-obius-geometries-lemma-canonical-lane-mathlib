import MObiusGeometriesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse