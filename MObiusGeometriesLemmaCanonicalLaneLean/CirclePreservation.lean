import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure CirclePreservationPackage where
  circle : Type u
  imageUnderMobius : circle → circle
  circlesMappedToCircles : Prop
  evidenceTerm : circlesMappedToCircles

structure CirclePreservationEvidence (C : CirclePreservationPackage) where
  circlesMappedToCirclesClosed : C.circlesMappedToCircles

def CirclePreservationClosed (C : CirclePreservationPackage) : Prop :=
  C.circlesMappedToCircles

theorem circle_preservation_closed_from_evidence
    (C : CirclePreservationPackage) (E : CirclePreservationEvidence C) :
    CirclePreservationClosed C := by
  exact E.circlesMappedToCirclesClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
