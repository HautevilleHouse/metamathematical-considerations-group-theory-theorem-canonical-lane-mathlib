import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.PrimitiveGroupLogicalFramework

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupTheoreticDecisionProblems (G : PrimitiveGroupLogicalFramework) where
  WordProblem : Prop
  ConjugacyProblem : Prop
  IsomorphismProblem : Prop
  WordProblemSolution : Prop
  ConjugacyProblemSolution : Prop
  IsomorphismProblemSolution : Prop
  WordProblemSolutionTerm : WordProblemSolution
  ConjugacyProblemSolutionTerm : ConjugacyProblemSolution
  IsomorphismProblemSolutionTerm : IsomorphismProblemSolution

structure DecisionProblemsEvidence (G : PrimitiveGroupLogicalFramework) (D : GroupTheoreticDecisionProblems G) where
  WordProblemSolutionClosed : D.WordProblemSolution
  ConjugacyProblemSolutionClosed : D.ConjugacyProblemSolution
  IsomorphismProblemSolutionClosed : D.IsomorphismProblemSolution

def DecisionProblemsClosed (G : PrimitiveGroupLogicalFramework) (D : GroupTheoreticDecisionProblems G) : Prop :=
  D.WordProblemSolution ∧ D.ConjugacyProblemSolution ∧ D.IsomorphismProblemSolution

theorem decision_problems_closed_from_evidence (G : PrimitiveGroupLogicalFramework) (D : GroupTheoreticDecisionProblems G) (E : DecisionProblemsEvidence G D) : DecisionProblemsClosed G D := by
  exact And.intro E.WordProblemSolutionClosed (And.intro E.ConjugacyProblemSolutionClosed E.IsomorphismProblemSolutionClosed)

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse