import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupAction (G : GroupSignature) (X : Type u) where
  act : G.carrier → X → X
  identityAction : ∀ x : X, act G.identity x = x
  compatibility : ∀ (g h : G.carrier) (x : X), act (G.multiplication g h) x = act g (act h x)

def GroupActionClosed {G : GroupSignature} {X : Type u} (A : GroupAction G X) : Prop :=
  A.identityAction ∧ ∀ (g h : G.carrier) (x : X), A.act (G.multiplication g h) x = A.act g (A.act h x)

theorem group_action_closed {G : GroupSignature} {X : Type u} (A : GroupAction G X) : GroupActionClosed A := by
  exact ⟨A.identityAction, A.compatibility⟩

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
