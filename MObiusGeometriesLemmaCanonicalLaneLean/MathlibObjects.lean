import MObiusGeometriesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MObiusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MObiusAdmittedObject where
  space : MObiusSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure MObiusEndgameState where
  object : MObiusAdmittedObject

def MObiusWitnessClosed (O : MObiusAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse