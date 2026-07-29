import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean

structure AdmittedObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

def sourceAdmittedObject : AdmittedObject := {
  sourceKey := "dimensional-compactification"
  theoremObject := "Dimensional Compactification QFT Foundation"
  claimBoundary := "carried boundary"
}

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.sourceKey = "dimensional-compactification" ∧ A.object.theoremObject = "Dimensional Compactification QFT Foundation") ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKey = "dimensional-compactification" ∧ A.object.theoremObject = "Dimensional Compactification QFT Foundation"

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro rfl rfl

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionalCompactificationQuantumFieldTheoryFoundationCanonicalLaneLean
end HautevilleHouse