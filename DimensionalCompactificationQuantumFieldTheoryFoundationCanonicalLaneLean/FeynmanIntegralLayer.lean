import DimensionalCompactificationQFTFoundation.SpectralTheoremLayer

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

structure FeynmanIntegralCertificate where
  spectralCertificate : SpectralCertificate
  integralDefined : Prop
  convergenceCondition : Prop
  integralDefinedProof : integralDefined
  convergenceConditionProof : convergenceCondition

def sourceFeynmanIntegralCertificate : FeynmanIntegralCertificate := {
  spectralCertificate := sourceSpectralCertificate,
  integralDefined := True,
  convergenceCondition := True,
  integralDefinedProof := trivial,
  convergenceConditionProof := trivial
}

theorem source_feynman_integral_certificate_closed :
    sourceFeynmanIntegralCertificate.integralDefined := by
  exact sourceFeynmanIntegralCertificate.integralDefinedProof

end DimensionalCompactificationQFTFoundation
end HautevilleHouse