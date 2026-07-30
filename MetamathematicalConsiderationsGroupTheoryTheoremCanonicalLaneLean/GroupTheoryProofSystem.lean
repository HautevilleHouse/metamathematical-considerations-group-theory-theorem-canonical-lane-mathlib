import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupTheoryProofSystem where
  groupAxioms : Prop
  inferenceRules : List String
  theoremProved : Prop
  proofLengthBound : Nat
  consistencyEstablished : Prop

structure GroupTheoryProofEvidence (G : GroupTheoryProofSystem) where
  groupAxiomsClosed : G.groupAxioms
  inferenceRulesClosed : G.inferenceRules = []
  theoremProvedClosed : G.theoremProved
  proofLengthBoundClosed : G.proofLengthBound = 0
  consistencyEstablishedClosed : G.consistencyEstablished

def GroupTheoryProofClosed (G : GroupTheoryProofSystem) : Prop :=
  G.groupAxioms ∧ G.inferenceRules = [] ∧ G.theoremProved ∧ G.proofLengthBound = 0 ∧ G.consistencyEstablished

theorem group_theory_proof_closed_from_evidence (G : GroupTheoryProofSystem)
    (E : GroupTheoryProofEvidence G) : GroupTheoryProofClosed G := by
  exact And.intro E.groupAxiomsClosed (And.intro E.inferenceRulesClosed
    (And.intro E.theoremProvedClosed (And.intro E.proofLengthBoundClosed E.consistencyEstablishedClosed)))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse