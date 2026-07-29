import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure StereographicProjectionPackage where
  sphere : Type u
  plane : Type v
  projection : sphere → plane
  preservesCircles : Prop
  bijection : Prop

structure StereographicProjectionEvidence (S : StereographicProjectionPackage) where
  preservesCirclesClosed : S.preservesCircles
  bijectionClosed : S.bijection

def StereographicProjectionClosed (S : StereographicProjectionPackage) : Prop :=
  S.preservesCircles ∧ S.bijection

theorem stereographic_projection_closed_from_evidence (S : StereographicProjectionPackage) (E : StereographicProjectionEvidence S) : StereographicProjectionClosed S :=
  And.intro E.preservesCirclesClosed E.bijectionClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
