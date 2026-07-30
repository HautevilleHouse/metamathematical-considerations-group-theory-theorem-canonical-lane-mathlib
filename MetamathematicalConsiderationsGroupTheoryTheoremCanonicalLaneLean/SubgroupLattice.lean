import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure Subgroup (G : GroupSignature) where
  subset : Set G.carrier
  containsIdentity : G.identity ∈ subset
  closedUnderMultiplication : ∀ a b, a ∈ subset → b ∈ subset → G.multiplication a b ∈ subset
  closedUnderInverse : ∀ a, a ∈ subset → G.inverse a ∈ subset

def SubgroupLattice {G : GroupSignature} (H : Subgroup G) : Prop :=
  H.containsIdentity ∧ H.closedUnderMultiplication ∧ H.closedUnderInverse

theorem subgroup_lattice_closed {G : GroupSignature} (H : Subgroup G) : SubgroupLattice H := by
  exact ⟨H.containsIdentity, H.closedUnderMultiplication, H.closedUnderInverse⟩

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
