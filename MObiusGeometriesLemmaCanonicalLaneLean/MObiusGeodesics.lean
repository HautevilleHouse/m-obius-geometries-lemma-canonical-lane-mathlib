import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusCirclePreservation

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusGeodesics (M : MObiusSurface) where
  geodesicSet : Set (Set M.carrier)
  invariantUnderMobius : Prop
  uniqueDetermination : Prop

structure MObiusGeodesicsEvidence {M : MObiusSurface} (G : MObiusGeodesics M) where
  invariantUnderMobiusClosed : G.invariantUnderMobius
  uniqueDeterminationClosed : G.uniqueDetermination

def MObiusGeodesicsClosed {M : MObiusSurface} (G : MObiusGeodesics M) : Prop :=
  G.invariantUnderMobius ∧ G.uniqueDetermination

theorem mobius_geodesics_closed_from_evidence {M : MObiusSurface} (G : MObiusGeodesics M) (E : MObiusGeodesicsEvidence G) :
    MObiusGeodesicsClosed G := by
  exact And.intro E.invariantUnderMobiusClosed E.uniqueDeterminationClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse