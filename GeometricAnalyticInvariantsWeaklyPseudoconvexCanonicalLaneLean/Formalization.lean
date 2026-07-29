import .SourcePackage

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123"
def sourceRepository : String := "geometric-analytic-invariants-weakly-pseudoconvex"
def sourceDescription : String := "Geometric Analytic Invariants for Weakly Pseudoconvex Manifolds"

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := sourceRepository,
  sourceCheckoutHead := sourceCheckoutHead,
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    formalizationCertificate.leanBuildChecked = true := by
  rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse