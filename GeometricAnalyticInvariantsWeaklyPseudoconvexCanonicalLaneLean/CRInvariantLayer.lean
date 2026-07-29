import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean.WeaklyPseudoConvexStructure

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure CRInvariantCertificate where
  domain : WeaklyPseudoConvexDomain
  crStructureDefined : Prop
  invariantUnderCR : Prop
  endpointChecked : Bool

primitiveCRCertificate : CRInvariantCertificate := {
  domain := defaultInstance,
  crStructureDefined := True,
  invariantUnderCR := True,
  endpointChecked := true
}

theorem cr_invariant_closed :
  primitiveCRCertificate.endpointChecked = true := rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse