import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.CrossRatioInvariant

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusCirclePreservation (M : MObiusSurface) where
  circles : Set (Set M.carrier)
  preservedUnderTransforms : Prop
  characterizationByCrossRatio : Prop

structure MObiusCirclePreservationEvidence {M : MObiusSurface} (C : MObiusCirclePreservation M) where
  preservedUnderTransformsClosed : C.preservedUnderTransforms
  characterizationByCrossRatioClosed : C.characterizationByCrossRatio

def MObiusCirclePreservationClosed {M : MObiusSurface} (C : MObiusCirclePreservation M) : Prop :=
  C.preservedUnderTransforms ∧ C.characterizationByCrossRatio

theorem mobius_circle_preservation_closed_from_evidence {M : MObiusSurface} (C : MObiusCirclePreservation M) (E : MObiusCirclePreservationEvidence C) :
    MObiusCirclePreservationClosed C := by
  exact And.intro E.preservedUnderTransformsClosed E.characterizationByCrossRatioClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse