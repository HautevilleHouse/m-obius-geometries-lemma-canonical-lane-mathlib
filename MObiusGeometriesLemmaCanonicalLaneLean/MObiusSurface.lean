import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusSurface where
  carrier : Type u
  topology : TopologicalSpace carrier
  conformalStructure : Prop
  mobiusTransitive : Prop

structure MObiusSurfaceEvidence (M : MObiusSurface) where
  conformalStructureClosed : M.conformalStructure
  mobiusTransitiveClosed : M.mobiusTransitive

def MObiusSurfaceClosed (M : MObiusSurface) : Prop :=
  M.conformalStructure ∧ M.mobiusTransitive

theorem mobius_surface_closed_from_evidence (M : MObiusSurface) (E : MObiusSurfaceEvidence M) :
    MObiusSurfaceClosed M := by
  exact And.intro E.conformalStructureClosed E.mobiusTransitiveClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse