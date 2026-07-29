import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure WeaklyPseudoconvexDomain where
  boundaryType : String
  boundaryRegularity : Nat
  weaklyPseudoconvexCondition : Prop
  boundaryDefiningFunction : String
  boundaryCurvatureEstimate : Prop
  boundaryPointWitness : String

def primitiveWeaklyPseudoconvexDomain : WeaklyPseudoconvexDomain := {
  boundaryType := "weakly-pseudoconvex",
  boundaryRegularity := 2,
  weaklyPseudoconvexCondition := True,
  boundaryDefiningFunction := "rho(z) = -Im(z) + |z|^2k",
  boundaryCurvatureEstimate := True,
  boundaryPointWitness := "origin with k-th order contact"
}

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse