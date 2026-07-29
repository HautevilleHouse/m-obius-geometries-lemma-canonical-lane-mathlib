import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusGeometryPackage where
  projectiveSpace : Type u
  topology : TopologicalSpace projectiveSpace
  mobiusStructure : Prop
  crossRatioInvariant : Prop
  circlePreservingMaps : Prop
  inversionStructure : Prop

structure MObiusGeometryEvidence (M : MObiusGeometryPackage) where
  mobiusStructureClosed : M.mobiusStructure
  crossRatioInvariantClosed : M.crossRatioInvariant
  circlePreservingMapsClosed : M.circlePreservingMaps
  inversionStructureClosed : M.inversionStructure

def MObiusGeometryClosed (M : MObiusGeometryPackage) : Prop :=
  M.mobiusStructure ∧ M.crossRatioInvariant ∧ M.circlePreservingMaps ∧ M.inversionStructure

theorem mobius_geometry_closed_from_evidence (M : MObiusGeometryPackage)
    (E : MObiusGeometryEvidence M) : MObiusGeometryClosed M := by
  exact And.intro E.mobiusStructureClosed
    (And.intro E.crossRatioInvariantClosed
      (And.intro E.circlePreservingMapsClosed E.inversionStructureClosed))

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse