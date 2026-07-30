import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupTheoryCompletenessPackage {S : MetamathematicalGroupSignaturePackage} where
  soundnessStatement : Prop
  completenessStatement : Prop
  decidabilityResult : Prop
  compactnessTheorem : Prop

structure GroupTheoryCompletenessEvidence {S : MetamathematicalGroupSignaturePackage}
    (G : GroupTheoryCompletenessPackage S) where
  soundnessStatementClosed : G.soundnessStatement
  completenessStatementClosed : G.completenessStatement
  decidabilityResultClosed : G.decidabilityResult
  compactnessTheoremClosed : G.compactnessTheorem

def GroupTheoryCompletenessClosed {S : MetamathematicalGroupSignaturePackage}
    (G : GroupTheoryCompletenessPackage S) : Prop :=
  G.soundnessStatement ∧ G.completenessStatement ∧ G.decidabilityResult ∧ G.compactnessTheorem

theorem group_theory_completeness_closed_from_evidence
    {S : MetamathematicalGroupSignaturePackage} (G : GroupTheoryCompletenessPackage S)
    (E : GroupTheoryCompletenessEvidence G) : GroupTheoryCompletenessClosed G := by
  exact And.intro E.soundnessStatementClosed
    (And.intro E.completenessStatementClosed
      (And.intro E.decidabilityResultClosed E.compactnessTheoremClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse