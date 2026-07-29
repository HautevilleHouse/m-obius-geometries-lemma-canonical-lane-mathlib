import MObiusGeometriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def mobiusProjection : Projection MObiusEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mobius_projection_idempotent (x : MObiusEndgameState) :
    mobiusProjection.toFun (mobiusProjection.toFun x) = mobiusProjection.toFun x := by
  exact mobiusProjection.idempotent x

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse