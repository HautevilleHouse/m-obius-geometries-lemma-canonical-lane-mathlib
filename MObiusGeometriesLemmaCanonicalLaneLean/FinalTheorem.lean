import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusGeometryPackage
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusTransformClassification

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

def ConstrainedMObiusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mobius_endgame (A : AdmissibleClass) :
    ConstrainedMObiusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse