import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MObiusGeometriesLemmaCanonicalLaneLean

structure InversionModelsPackage where
  planeGroup : Type u
  inversionAction : planeGroup → (ℝ × ℝ) → (ℝ × ℝ)
  preservesGeneralizedCircles : Prop
  modelDefined : Prop

structure InversionModelsEvidence (P : InversionModelsPackage) where
  preservesGeneralizedCirclesClosed : P.preservesGeneralizedCircles
  modelDefinedClosed : P.modelDefined

def InversionModelsClosed (P : InversionModelsPackage) : Prop :=
  P.preservesGeneralizedCircles ∧ P.modelDefined

theorem inversion_models_closed_from_evidence (P : InversionModelsPackage) (E : InversionModelsEvidence P) : InversionModelsClosed P :=
  And.intro E.preservesGeneralizedCirclesClosed E.modelDefinedClosed

end MObiusGeometriesLemmaCanonicalLaneLean
end HautevilleHouse
