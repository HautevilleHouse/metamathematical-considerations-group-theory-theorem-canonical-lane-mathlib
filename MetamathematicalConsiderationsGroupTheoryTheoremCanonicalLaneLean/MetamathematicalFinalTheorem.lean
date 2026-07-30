import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.MetamathematicalLemmas
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.MetamathematicalGateLemmas

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

def ConstrainedMetamathematicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metamathematical_endgame (A : AdmissibleClass) :
    ConstrainedMetamathematicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
