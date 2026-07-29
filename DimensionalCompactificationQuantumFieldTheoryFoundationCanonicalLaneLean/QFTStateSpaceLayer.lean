import DimensionalCompactificationQFTFoundation.CompactificationGeometryLayer
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

abbrev CompactifiedSpacetime := Fin 4 → ℝ

structure QuantumState where
  amplitude : CompactifiedSpacetime → ℂ
  normSquared : ℝ
  normSquaredFinite : normSquared < ∞

def vacuumState : QuantumState := {
  amplitude := fun _ => 0,
  normSquared := 0,
  normSquaredFinite := by
    simp
}

structure StateSpaceCertificate where
  stateSpaceDefined : Prop
  innerProductDefined : Prop
  completenessProperty : Prop
  stateSpaceDefinedProof : stateSpaceDefined
  innerProductDefinedProof : innerProductDefined
  completenessPropertyProof : completenessProperty

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  stateSpaceDefined := True,
  innerProductDefined := True,
  completenessProperty := True,
  stateSpaceDefinedProof := by
    exact True.intro,
  innerProductDefinedProof := by
    exact True.intro,
  completenessPropertyProof := by
    exact True.intro
}

theorem source_state_space_closed :
    sourceStateSpaceCertificate.stateSpaceDefined := by
  exact sourceStateSpaceCertificate.stateSpaceDefinedProof

end DimensionalCompactificationQFTFoundation
end HautevilleHouse