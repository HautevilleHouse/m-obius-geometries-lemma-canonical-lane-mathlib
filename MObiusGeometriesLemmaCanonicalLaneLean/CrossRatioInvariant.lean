import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusTransformGroup

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure CrossRatioInvariant (M : MObiusSurface) where
  crossRatio : M.carrier → M.carrier → M.carrier → M.carrier → ℝ
  invariantUnderMobius : Prop
  fourPointCondition : Prop

structure CrossRatioInvariantEvidence {M : MObiusSurface} (C : CrossRatioInvariant M) where
  invariantUnderMobiusClosed : C.invariantUnderMobius
  fourPointConditionClosed : C.fourPointCondition

def CrossRatioInvariantClosed {M : MObiusSurface} (C : CrossRatioInvariant M) : Prop :=
  C.invariantUnderMobius ∧ C.fourPointCondition

theorem cross_ratio_invariant_closed_from_evidence {M : MObiusSurface} (C : CrossRatioInvariant M) (E : CrossRatioInvariantEvidence C) :
    CrossRatioInvariantClosed C := by
  exact And.intro E.invariantUnderMobiusClosed E.fourPointConditionClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse