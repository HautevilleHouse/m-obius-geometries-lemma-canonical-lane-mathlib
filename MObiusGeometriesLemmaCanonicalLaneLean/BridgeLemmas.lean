import MObiusGeometriesLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MObiusWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse