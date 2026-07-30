import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupSignature where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  assoc : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : carrier, multiplication identity a = a
  identityRight : ∀ a : carrier, multiplication a identity = a
  inverseLeft : ∀ a : carrier, multiplication (inverse a) a = identity
  inverseRight : ∀ a : carrier, multiplication a (inverse a) = identity

def GroupSignatureClosed (G : GroupSignature) : Prop :=
  ∀ a b c : G.carrier,
    G.multiplication (G.multiplication a b) c = G.multiplication a (G.multiplication b c)
    ∧ G.multiplication G.identity a = a
    ∧ G.multiplication a G.identity = a
    ∧ G.multiplication (G.inverse a) a = G.identity
    ∧ G.multiplication a (G.inverse a) = G.identity

theorem group_signature_closed (G : GroupSignature) : GroupSignatureClosed G := by
  refine λ a b c => ⟨G.assoc a b c, G.identityLeft a, G.identityRight a, G.inverseLeft a, G.inverseRight a⟩

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
