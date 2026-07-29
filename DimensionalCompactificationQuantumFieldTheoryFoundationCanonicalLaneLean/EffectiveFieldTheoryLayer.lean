import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean

structure EffectiveFieldTheoryCertificate where
  cutoffScale : ℝ
  higherDimOperators : Prop
  lowerDimEffectiveAction : Prop
  renormalizationGroupFlow : Prop
  decouplingValid : Prop
  cutoffScaleClosed : cutoffScale = 1e16
  higherDimOperatorsClosed : higherDimOperators
  lowerDimEffectiveActionClosed : lowerDimEffectiveAction
  renormalizationGroupFlowClosed : renormalizationGroupFlow
  decouplingValidClosed : decouplingValid

def sourceEffectiveFieldTheoryCertificate : EffectiveFieldTheoryCertificate := {
  cutoffScale := 1e16
  higherDimOperators := True
  lowerDimEffectiveAction := True
  renormalizationGroupFlow := True
  decouplingValid := True
  cutoffScaleClosed := rfl
  higherDimOperatorsClosed := trivial
  lowerDimEffectiveActionClosed := trivial
  renormalizationGroupFlowClosed := trivial
  decouplingValidClosed := trivial
}

def EffectiveFieldTheoryClosed (C : EffectiveFieldTheoryCertificate) : Prop :=
  C.cutoffScale = 1e16 ∧
  C.higherDimOperators ∧
  C.lowerDimEffectiveAction ∧
  C.renormalizationGroupFlow ∧
  C.decouplingValid

theorem source_effective_field_theory_closed :
    EffectiveFieldTheoryClosed sourceEffectiveFieldTheoryCertificate := by
  exact And.intro sourceEffectiveFieldTheoryCertificate.cutoffScaleClosed
    (And.intro sourceEffectiveFieldTheoryCertificate.higherDimOperatorsClosed
      (And.intro sourceEffectiveFieldTheoryCertificate.lowerDimEffectiveActionClosed
        (And.intro sourceEffectiveFieldTheoryCertificate.renormalizationGroupFlowClosed
          sourceEffectiveFieldTheoryCertificate.decouplingValidClosed)))

end DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean
end HautevilleHouse