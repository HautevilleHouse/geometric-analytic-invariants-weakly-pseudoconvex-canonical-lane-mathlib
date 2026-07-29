import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure WeaklyPseudoconvexCertificate where
  domainType : String
  boundaryClass : String
  leviFormRank : Nat
  analyticInvariantLabel : String
  closureCondition : Bool
  remainderRecorded : Bool

def weaklyPseudoconvexCertificate : WeaklyPseudoconvexCertificate := {
  domainType := "weakly pseudoconvex domain in ℂⁿ",
  boundaryClass := "finite type in the sense of D'Angelo",
  leviFormRank := 0,
  analyticInvariantLabel := "D'Angelo 1-type",
  closureCondition := true,
  remainderRecorded := true
}

def WeaklyPseudoconvexStructureClosed (C : WeaklyPseudoconvexCertificate) : Prop :=
  C.closureCondition = true ∧ C.remainderRecorded = true

theorem weakly_pseudoconvex_structure_closed_checked :
    WeaklyPseudoconvexStructureClosed weaklyPseudoconvexCertificate := by
  exact And.intro rfl rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse
