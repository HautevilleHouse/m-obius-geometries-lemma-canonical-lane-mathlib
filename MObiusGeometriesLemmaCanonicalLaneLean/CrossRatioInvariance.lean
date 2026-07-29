import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure CrossRatioPackage where
  fourPoints : Type u
  crossRatio : fourPoints → fourPoints → fourPoints → fourPoints → ℝ
  invarianceUnderMobius : Prop

structure CrossRatioEvidence (C : CrossRatioPackage) where
  invarianceUnderMobiusClosed : C.invarianceUnderMobius

def CrossRatioClosed (C : CrossRatioPackage) : Prop :=
  C.invarianceUnderMobius

theorem cross_ratio_closed_from_evidence
    (C : CrossRatioPackage) (E : CrossRatioEvidence C) :
    CrossRatioClosed C := by
  exact E.invarianceUnderMobiusClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
