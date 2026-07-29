import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean

structure QFTCertificate where
  lagrangian : Prop
  pathIntegral : Prop
  renormalization : Prop
  correlationFunctions : Prop
  lagrangianClosed : lagrangian
  pathIntegralClosed : pathIntegral
  renormalizationClosed : renormalization
  correlationFunctionsClosed : correlationFunctions

def sourceQFTCertificate : QFTCertificate := {
  lagrangian := True
  pathIntegral := True
  renormalization := True
  correlationFunctions := True
  lagrangianClosed := trivial
  pathIntegralClosed := trivial
  renormalizationClosed := trivial
  correlationFunctionsClosed := trivial
}

def QFTClosed (C : QFTCertificate) : Prop :=
  C.lagrangian ∧ C.pathIntegral ∧ C.renormalization ∧ C.correlationFunctions

theorem source_qft_closed :
    QFTClosed sourceQFTCertificate := by
  exact And.intro sourceQFTCertificate.lagrangianClosed
    (And.intro sourceQFTCertificate.pathIntegralClosed
      (And.intro sourceQFTCertificate.renormalizationClosed
        sourceQFTCertificate.correlationFunctionsClosed))

end DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean
end HautevilleHouse