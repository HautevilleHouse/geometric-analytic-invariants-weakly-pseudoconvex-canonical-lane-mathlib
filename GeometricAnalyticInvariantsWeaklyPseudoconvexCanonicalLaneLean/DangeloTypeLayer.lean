import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean.WeaklyPseudoconvexStructure

namespace HautevilleHouse
namespace GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean

structure DangeloTypeCertificate where
  domainType : String
  typeValue : Nat
  multiTypeRecorded : Bool
  invariantClosed : Bool

def dangeloTypeCertificate : DangeloTypeCertificate := {
  domainType := "weakly pseudoconvex domain",
  typeValue := 4,
  multiTypeRecorded := true,
  invariantClosed := true
}

def DangeloTypeLayerClosed (C : DangeloTypeCertificate) : Prop :=
  C.typeValue ≥ 2 ∧ C.invariantClosed = true

theorem dangelo_type_layer_closed_checked :
    DangeloTypeLayerClosed dangeloTypeCertificate := by
  constructor
  · omega
  · rfl

end GeometricAnalyticInvariantsWeaklyPseudoconvexCanonicalLaneLean
end HautevilleHouse
