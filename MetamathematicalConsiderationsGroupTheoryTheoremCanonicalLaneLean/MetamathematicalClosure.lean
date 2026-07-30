import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure MetamathematicalClosure where
  metaTheoryConsistent : Prop
  objectTheoryConsistent : Prop
  completenessAchieved : Prop
  decidabilityOutcome : Prop

structure MetamathematicalClosureEvidence (C : MetamathematicalClosure) where
  metaTheoryConsistentClosed : C.metaTheoryConsistent
  objectTheoryConsistentClosed : C.objectTheoryConsistent
  completenessAchievedClosed : C.completenessAchieved
  decidabilityOutcomeClosed : C.decidabilityOutcome

def ClosureClosed (C : MetamathematicalClosure) : Prop :=
  C.metaTheoryConsistent ∧ C.objectTheoryConsistent ∧ C.completenessAchieved ∧ C.decidabilityOutcome

theorem closure_closed_from_evidence (C : MetamathematicalClosure)
    (E : MetamathematicalClosureEvidence C) : ClosureClosed C := by
  exact And.intro E.metaTheoryConsistentClosed (And.intro E.objectTheoryConsistentClosed
    (And.intro E.completenessAchievedClosed E.decidabilityOutcomeClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse