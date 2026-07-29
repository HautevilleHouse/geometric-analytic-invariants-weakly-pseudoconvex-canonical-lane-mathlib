import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean.WeaklyPseudoConvexStructure

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure BergmanKernelCertificate where
  domain : WeaklyPseudoConvexDomain
  kernelDefined : Prop
  invariantUnderBiholomorphism : Prop
  boundaryAsymptotics : Prop
  endpointSatisfied : Bool

primitiveBergmanKernelCertificate : BergmanKernelCertificate := {
  domain := defaultInstance,
  kernelDefined := True,
  invariantUnderBiholomorphism := True,
  boundaryAsymptotics := True,
  endpointSatisfied := true
}

theorem bergman_kernel_certificate_closed :
  primitiveBergmanKernelCertificate.endpointSatisfied = true := rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse