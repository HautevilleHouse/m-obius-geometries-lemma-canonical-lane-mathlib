import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusSurface

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusTransformGroup (M : MObiusSurface) where
  transformations : Type u
  identity : transformations
  composition : transformations → transformations → transformations
  inverse : transformations → transformations
  groupAxioms : Prop
  actsTransitively : Prop

structure MObiusTransformGroupEvidence {M : MObiusSurface} (G : MObiusTransformGroup M) where
  groupAxiomsClosed : G.groupAxioms
  actsTransitivelyClosed : G.actsTransitively

def MObiusTransformGroupClosed {M : MObiusSurface} (G : MObiusTransformGroup M) : Prop :=
  G.groupAxioms ∧ G.actsTransitively

theorem mobius_transform_group_closed_from_evidence {M : MObiusSurface} (G : MObiusTransformGroup M) (E : MObiusTransformGroupEvidence G) :
    MObiusTransformGroupClosed G := by
  exact And.intro E.groupAxiomsClosed E.actsTransitivelyClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse