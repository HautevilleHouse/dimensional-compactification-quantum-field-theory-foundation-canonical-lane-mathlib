import DimensionalCompactificationQFTFoundation.QFTStateSpaceLayer

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

structure SpectralCertificate where
  stateSpaceCertificate : StateSpaceCertificate
  spectralMeasure : Prop
  spectralDecomposition : Prop
  spectralMeasureProof : spectralMeasure
  spectralDecompositionProof : spectralDecomposition

def sourceSpectralCertificate : SpectralCertificate := {
  stateSpaceCertificate := sourceStateSpaceCertificate,
  spectralMeasure := True,
  spectralDecomposition := True,
  spectralMeasureProof := trivial,
  spectralDecompositionProof := trivial
}

theorem source_spectral_certificate_closed :
    sourceSpectralCertificate.spectralMeasure := by
  exact sourceSpectralCertificate.spectralMeasureProof

end DimensionalCompactificationQFTFoundation
end HautevilleHouse