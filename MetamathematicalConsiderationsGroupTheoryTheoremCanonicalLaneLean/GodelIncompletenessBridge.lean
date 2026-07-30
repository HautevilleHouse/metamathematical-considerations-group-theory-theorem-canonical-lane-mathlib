import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GodelIncompletenessBridge where
  firstIncompletenessTheorem : Prop
  secondIncompletenessTheorem : Prop
  selfReferenceLemma : Prop
  consistencyStrength : Prop

structure GodelBridgeEvidence (G : GodelIncompletenessBridge) where
  firstIncompletenessClosed : G.firstIncompletenessTheorem
  secondIncompletenessClosed : G.secondIncompletenessTheorem
  selfReferenceLemmaClosed : G.selfReferenceLemma
  consistencyStrengthClosed : G.consistencyStrength

def GodelIncompletenessClosed (G : GodelIncompletenessBridge) : Prop :=
  G.firstIncompletenessTheorem ∧ G.secondIncompletenessTheorem ∧ G.selfReferenceLemma ∧ G.consistencyStrength

theorem godel_incompleteness_closed_from_evidence (G : GodelIncompletenessBridge)
    (E : GodelBridgeEvidence G) : GodelIncompletenessClosed G := by
  exact And.intro E.firstIncompletenessClosed (And.intro E.secondIncompletenessClosed
    (And.intro E.selfReferenceLemmaClosed E.consistencyStrengthClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse