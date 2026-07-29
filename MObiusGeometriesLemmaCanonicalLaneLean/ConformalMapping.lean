import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure ConformalMappingPackage where
  complexPlane : Type u
  mobiusTransform : complexPlane → complexPlane → complexPlane
  anglePreserving : Prop
  holomorphicCondition : Prop

structure ConformalMappingEvidence (C : ConformalMappingPackage) where
  anglePreservingClosed : C.anglePreserving
  holomorphicConditionClosed : C.holomorphicCondition

def ConformalMappingClosed (C : ConformalMappingPackage) : Prop :=
  C.anglePreserving ∧ C.holomorphicCondition

theorem conformal_mapping_closed_from_evidence (C : ConformalMappingPackage) (E : ConformalMappingEvidence C) : ConformalMappingClosed C :=
  And.intro E.anglePreservingClosed E.holomorphicConditionClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
