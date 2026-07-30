import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure MetamathematicalStructure where
  signature : Type u
  symbols : List String
  arity : Nat
  relations : List String
  formalLanguageDefined : Prop

structure MetamathematicalEvidence (M : MetamathematicalStructure) where
  signatureClosed : M.signature
  symbolsClosed : M.symbols = []
  relationsClosed : M.relations = []
  formalLanguageDefinedClosed : M.formalLanguageDefined

def MetamathematicalClosed (M : MetamathematicalStructure) : Prop :=
  M.signature ∧ M.symbols = [] ∧ M.relations = [] ∧ M.formalLanguageDefined

theorem metamathematical_closed_from_evidence (M : MetamathematicalStructure)
    (E : MetamathematicalEvidence M) : MetamathematicalClosed M := by
  exact And.intro E.signatureClosed (And.intro E.symbolsClosed (And.intro E.relationsClosed E.formalLanguageDefinedClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse