import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusTransformClassification where
  circlePreservingAutomorphisms : Prop
  inversionGeneration : Prop
  reflectionSymmetry : Prop
  hyperbolicIsometries : Prop
  parabolicLoxodromicElliptic : Prop

structure MObiusTransformEvidence (C : MObiusTransformClassification) where
  circlePreservingAutomorphismsClosed : C.circlePreservingAutomorphisms
  inversionGenerationClosed : C.inversionGeneration
  reflectionSymmetryClosed : C.reflectionSymmetry
  hyperbolicIsometriesClosed : C.hyperbolicIsometries
  parabolicLoxodromicEllipticClosed : C.parabolicLoxodromicElliptic

def MObiusTransformClosed (C : MObiusTransformClassification) : Prop :=
  C.circlePreservingAutomorphisms ∧ C.inversionGeneration ∧
  C.reflectionSymmetry ∧ C.hyperbolicIsometries ∧ C.parabolicLoxodromicElliptic

theorem mobius_transform_closed_from_evidence (C : MObiusTransformClassification)
    (E : MObiusTransformEvidence C) : MObiusTransformClosed C := by
  exact And.intro E.circlePreservingAutomorphismsClosed
    (And.intro E.inversionGenerationClosed
      (And.intro E.reflectionSymmetryClosed
        (And.intro E.hyperbolicIsometriesClosed E.parabolicLoxodromicEllipticClosed)))

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse