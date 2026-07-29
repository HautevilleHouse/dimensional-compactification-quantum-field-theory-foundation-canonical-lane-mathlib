import DimensionalCompactificationQFTFoundation.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

def bridgeClosed (A : QFTAdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

theorem bridge_from_admissible_class (A : QFTAdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end DimensionalCompactificationQFTFoundation
end HautevilleHouse