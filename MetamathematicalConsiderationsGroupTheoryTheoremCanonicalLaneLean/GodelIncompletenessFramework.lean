import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.PrimitiveGroupLogicalFramework

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GodelIncompletenessFramework {G : PrimitiveGroupLogicalFramework} {L : PrimitiveLogicalSystem} (C : PrimitiveMetamathematicalContext G L) where
  SelfReferenceLemma : Prop
  UndecidableStatementConstructed : Prop
  ConsistencyAssumption : Prop
  FirstIncompletenessHolds : Prop
  SelfReferenceLemmaTerm : SelfReferenceLemma
  UndecidableStatementConstructedTerm : UndecidableStatementConstructed
  ConsistencyAssumptionTerm : ConsistencyAssumption
  FirstIncompletenessHoldsTerm : FirstIncompletenessHolds

structure GodelIncompletenessEvidence {G : PrimitiveGroupLogicalFramework} {L : PrimitiveLogicalSystem} {C : PrimitiveMetamathematicalContext G L} (F : GodelIncompletenessFramework C) where
  SelfReferenceLemmaClosed : F.SelfReferenceLemma
  UndecidableStatementConstructedClosed : F.UndecidableStatementConstructed
  ConsistencyAssumptionClosed : F.ConsistencyAssumption
  FirstIncompletenessHoldsClosed : F.FirstIncompletenessHolds

def GodelIncompletenessClosed {G : PrimitiveGroupLogicalFramework} {L : PrimitiveLogicalSystem} {C : PrimitiveMetamathematicalContext G L} (F : GodelIncompletenessFramework C) : Prop :=
  F.SelfReferenceLemma ∧ F.UndecidableStatementConstructed ∧ F.ConsistencyAssumption ∧ F.FirstIncompletenessHolds

theorem godel_incompleteness_closed_from_evidence {G : PrimitiveGroupLogicalFramework} {L : PrimitiveLogicalSystem} {C : PrimitiveMetamathematicalContext G L} (F : GodelIncompletenessFramework C) (E : GodelIncompletenessEvidence F) : GodelIncompletenessClosed F := by
  exact And.intro E.SelfReferenceLemmaClosed (And.intro E.UndecidableStatementConstructedClosed (And.intro E.ConsistencyAssumptionClosed E.FirstIncompletenessHoldsClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse