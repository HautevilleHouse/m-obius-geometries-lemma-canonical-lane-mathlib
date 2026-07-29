import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MObiusGeometriesLemmaCanonicalLaneLean.MObiusGeodesics

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure MObiusLemmaStatement (M : MObiusSurface) where
  equivalence : Prop
  mobiusGroup : MObiusTransformGroup M
  crossRatio : CrossRatioInvariant M
  circlePreservation : MObiusCirclePreservation M
  geodesics : MObiusGeodesics M

structure MObiusLemmaStatementEvidence {M : MObiusSurface} (S : MObiusLemmaStatement M) where
  equivalenceClosed : S.equivalence

def MObiusLemmaStatementClosed {M : MObiusSurface} (S : MObiusLemmaStatement M) : Prop :=
  S.equivalence

theorem mobius_lemma_statement_closed_from_evidence {M : MObiusSurface} (S : MObiusLemmaStatement M) (E : MObiusLemmaStatementEvidence S) :
    MObiusLemmaStatementClosed S := by
  exact E.equivalenceClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse