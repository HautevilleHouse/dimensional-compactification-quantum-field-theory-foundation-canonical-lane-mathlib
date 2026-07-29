import DimensionalCompactificationQFTFoundation.BridgeLemmas

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

def gateClosed (A : QFTAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : QFTAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DimensionalCompactificationQFTFoundation
end HautevilleHouse