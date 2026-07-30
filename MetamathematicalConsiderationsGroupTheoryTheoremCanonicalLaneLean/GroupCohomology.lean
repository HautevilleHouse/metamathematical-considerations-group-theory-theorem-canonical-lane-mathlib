import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupCohomology (G : GroupSignature) (A : Type u) [AddCommGroup A] where
  cochains : ℕ → Type u
  coboundary : ∀ n, cochains n → cochains (n+1)
  coboundarySquared : ∀ n (f : cochains n), coboundary (n+1) (coboundary n f) = 0

def GroupCohomologyClosed {G : GroupSignature} {A : Type u} [AddCommGroup A] (H : GroupCohomology G A) : Prop :=
  ∀ n (f : H.cochains n), H.coboundary (n+1) (H.coboundary n f) = 0

theorem group_cohomology_closed {G : GroupSignature} {A : Type u} [AddCommGroup A] (H : GroupCohomology G A) : GroupCohomologyClosed H := by
  intro n f
  exact H.coboundarySquared n f

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
