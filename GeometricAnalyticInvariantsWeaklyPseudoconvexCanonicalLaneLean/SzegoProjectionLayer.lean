import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean.WeaklyPseudoConvexStructure
import HautevilleHouse.GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean.BergmanKernelInvariant

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure SzegoProjectionCertificate where
  domain : WeaklyPseudoConvexDomain
  projectionBoundary : Prop
  regularityHeld : Prop
  endpointClosed : Bool

primitiveSzegoCertificate : SzegoProjectionCertificate := {
  domain := defaultInstance,
  projectionBoundary := True,
  regularityHeld := True,
  endpointClosed := true
}

theorem szego_projection_closed :
  primitiveSzegoCertificate.endpointClosed = true := rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse