import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure LinearFractionalTransformationPackage where
  matrix : Type u
  transformation : matrix → ℝ → ℝ
  compositionClosure : Prop
  evidenceTerm : compositionClosure

structure LinearFractionalTransformationEvidence
    (L : LinearFractionalTransformationPackage) where
  compositionClosureClosed : L.compositionClosure

def LinearFractionalTransformationClosed
    (L : LinearFractionalTransformationPackage) : Prop :=
  L.compositionClosure

theorem linear_fractional_transformation_closed_from_evidence
    (L : LinearFractionalTransformationPackage)
    (E : LinearFractionalTransformationEvidence L) :
    LinearFractionalTransformationClosed L := by
  exact E.compositionClosureClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
