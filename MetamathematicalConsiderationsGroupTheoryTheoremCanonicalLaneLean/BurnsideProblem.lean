import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure BurnsideProblemParameters where
  n : ℕ
  exponent : ℕ
  finiteGeneration : Prop

def BurnsideProblemStatement (P : BurnsideProblemParameters) : Prop :=
  ∀ (G : GroupSignature), (G.carrier.Finite) → (∀ g : G.carrier, (g^n = G.identity)) → G.carrier.Finite

structure BurnsideGroup (P : BurnsideProblemParameters) where
  group : GroupSignature
  exponentCondition : ∀ g : group.carrier, (g^P.n = group.identity)
  locallyFinite : Prop

def BurnsideClosed (B : BurnsideGroup) : Prop :=
  B.locallyFinite

theorem burnside_closed (B : BurnsideGroup) : BurnsideClosed B := by
  exact B.locallyFinite

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
