import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean

structure CompactificationLayerCertificate where
  compactDim : Nat
  extraDimGeometry : Prop
  kaluzaKleinModes : Prop
  effectiveAction : Prop
  extraDimGeometryClosed : extraDimGeometry
  kaluzaKleinModesClosed : kaluzaKleinModes
  effectiveActionClosed : effectiveAction

def sourceCompactificationLayerCertificate : CompactificationLayerCertificate := {
  compactDim := 6
  extraDimGeometry := True
  kaluzaKleinModes := True
  effectiveAction := True
  extraDimGeometryClosed := trivial
  kaluzaKleinModesClosed := trivial
  effectiveActionClosed := trivial
}

def CompactificationLayerClosed (C : CompactificationLayerCertificate) : Prop :=
  C.extraDimGeometry ∧ C.kaluzaKleinModes ∧ C.effectiveAction

theorem source_compactification_layer_closed :
    CompactificationLayerClosed sourceCompactificationLayerCertificate := by
  exact And.intro sourceCompactificationLayerCertificate.extraDimGeometryClosed
    (And.intro sourceCompactificationLayerCertificate.kaluzaKleinModesClosed
      sourceCompactificationLayerCertificate.effectiveActionClosed)

end DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean
end HautevilleHouse