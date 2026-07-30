import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.GroupTheoryEndgame

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

def ConstrainedMetamathematicalGroupTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metamathematical_group_theory_endgame (A : AdmissibleClass) :
    ConstrainedMetamathematicalGroupTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse