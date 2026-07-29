import DimensionalCompactificationQFTFoundation.GateLemmas

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

def ConstrainedQFTClosure (A : QFTAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qft_endgame (A : QFTAdmissibleClass) :
    ConstrainedQFTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionalCompactificationQFTFoundation
end HautevilleHouse