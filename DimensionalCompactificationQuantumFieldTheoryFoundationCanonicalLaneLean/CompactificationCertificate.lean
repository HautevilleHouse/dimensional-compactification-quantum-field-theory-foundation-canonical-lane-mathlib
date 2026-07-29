import DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean.QuantumFieldAnalysisLayer

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean

structure CompactificationCertificate where
  compactifiedField : CompactifiedField
  spectralData : SpectralData
  effectiveAction : EffectiveActionData
  quantumAnalysis : QuantumFieldAnalysis
  substrateClosed : Prop
  spectralClosed : Prop
  effectiveClosed : Prop
  analysisClosed : Prop
  substrateClosedProof : substrateClosed
  spectralClosedProof : spectralClosed
  effectiveClosedProof : effectiveClosed
  analysisClosedProof : analysisClosed

def sourceCompactificationCertificate : CompactificationCertificate := {
  compactifiedField := sourceCompactifiedField
  spectralData := KaluzaKleinMasses
  effectiveAction := sourceEffectiveAction
  quantumAnalysis := sourceQuantumFieldAnalysis
  substrateClosed := sourceCompactifiedField.internalDynamics ∧ sourceCompactifiedField.externalDynamics ∧ sourceCompactifiedField.dimensionalReduction ∧ sourceCompactifiedField.effectiveAction
  spectralClosed := KaluzaKleinMasses.modeExpansion
  effectiveClosed := sourceEffectiveAction.symmetryReduction ∧ sourceEffectiveAction.scaleHierarchy
  analysisClosed := sourceQuantumFieldAnalysis.correlationFunctions ∧ sourceQuantumFieldAnalysis.renormalizationFlow ∧ sourceQuantumFieldAnalysis.scatteringAmplitudes ∧ sourceQuantumFieldAnalysis.anomalyCancellation
  substrateClosedProof := source_compactified_field_closed
  spectralClosedProof := spectral_decomposition_closed
  effectiveClosedProof := effective_action_closure
  analysisClosedProof := quantum_field_analysis_closed
}

def CompactificationCertificateClosed (C : CompactificationCertificate) : Prop :=
  C.substrateClosed ∧ C.spectralClosed ∧ C.effectiveClosed ∧ C.analysisClosed

theorem source_compactification_certificate_closed : CompactificationCertificateClosed sourceCompactificationCertificate := by
  exact And.intro sourceCompactificationCertificate.substrateClosedProof
    (And.intro sourceCompactificationCertificate.spectralClosedProof
      (And.intro sourceCompactificationCertificate.effectiveClosedProof sourceCompactificationCertificate.analysisClosedProof))

end DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean
end HautevilleHouse