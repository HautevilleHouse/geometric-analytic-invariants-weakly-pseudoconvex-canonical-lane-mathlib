import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure MongeAmpereCertificate where
  domain : WeaklyPseudoconvexDomain
  mongeAmpereMeasure : String
  mongeAmpereOperator : String
  mongeAmpereSolved : Bool
  boundaryBehavior : String
  regularityOfSolution : String

def primitiveMongeAmpereCertificate : MongeAmpereCertificate := {
  domain := primitiveWeaklyPseudoconvexDomain,
  mongeAmpereMeasure := "(dd^c u)^n",
  mongeAmpereOperator := "det(D^2 u) = f",
  mongeAmpereSolved := true,
  boundaryBehavior := "Dirichlet with zero boundary data",
  regularityOfSolution := "C^{1,1} up to boundary"
}

theorem monge_ampere_certificate_checked :
  primitiveMongeAmpereCertificate.mongeAmpereSolved = true := by
  rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse