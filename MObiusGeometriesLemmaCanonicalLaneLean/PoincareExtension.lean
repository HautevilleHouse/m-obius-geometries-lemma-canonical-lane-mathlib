import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure PoincareExtensionPackage where
  halfSpace : Type u
  boundary : Type v
  extensionMap : boundary → halfSpace
  isIsometry : Prop
  evidenceTerm : isIsometry

structure PoincareExtensionEvidence
    (P : PoincareExtensionPackage) where
  isIsometryClosed : P.isIsometry

def PoincareExtensionClosed
    (P : PoincareExtensionPackage) : Prop :=
  P.isIsometry

theorem poincare_extension_closed_from_evidence
    (P : PoincareExtensionPackage)
    (E : PoincareExtensionEvidence P) :
    PoincareExtensionClosed P := by
  exact E.isIsometryClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
