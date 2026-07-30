import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupSignature where
  carrierType : Type u
  operation : carrierType → carrierType → carrierType
  identity : carrierType
  inverse : carrierType → carrierType
  associativity : ∀ a b c : carrierType, operation (operation a b) c = operation a (operation b c)
  identityLeft : ∀ a : carrierType, operation identity a = a
  identityRight : ∀ a : carrierType, operation a identity = a
  inverseLeft : ∀ a : carrierType, operation (inverse a) a = identity
  inverseRight : ∀ a : carrierType, operation a (inverse a) = identity

structure MetamathematicalGroupSignaturePackage where
  object : GroupSignature
  formulaLanguageDefined : Prop
  proofTheoryAxioms : Prop
  formulaLanguageDefinedTerm : formulaLanguageDefined
  proofTheoryAxiomsTerm : proofTheoryAxioms

structure MetamathematicalGroupSignatureEvidence (P : MetamathematicalGroupSignaturePackage) where
  formulaLanguageDefinedClosed : P.formulaLanguageDefined
  proofTheoryAxiomsClosed : P.proofTheoryAxioms

def MetamathematicalGroupSignatureClosed (P : MetamathematicalGroupSignaturePackage) : Prop :=
  P.formulaLanguageDefined ∧ P.proofTheoryAxioms

theorem metamathematical_group_signature_closed_from_evidence
    (P : MetamathematicalGroupSignaturePackage) (E : MetamathematicalGroupSignatureEvidence P) :
    MetamathematicalGroupSignatureClosed P := by
  exact And.intro E.formulaLanguageDefinedClosed E.proofTheoryAxiomsClosed

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse