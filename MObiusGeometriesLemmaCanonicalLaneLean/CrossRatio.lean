import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure CrossRatioPackage where
  pointFour : Type u
  crossRatio : pointFour → ℝ
  invarianceUnderInversion : Prop
  realCrossRatioDefined : Prop

structure CrossRatioEvidence (C : CrossRatioPackage) where
  invarianceUnderInversionClosed : C.invarianceUnderInversion
  realCrossRatioDefinedClosed : C.realCrossRatioDefined

def CrossRatioClosed (C : CrossRatioPackage) : Prop :=
  C.invarianceUnderInversion ∧ C.realCrossRatioDefined

theorem cross_ratio_closed_from_evidence (C : CrossRatioPackage) (E : CrossRatioEvidence C) : CrossRatioClosed C :=
  And.intro E.invarianceUnderInversionClosed E.realCrossRatioDefinedClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
