import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.GroupTheoryCompleteness

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure ModelTheoryGroupsPackage {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} where
  firstOrderLanguageDefined : Prop
  modelClassAxiomatized : Prop
  ultraproductConstruction : Prop
  elementaryEquivalenceCharacterization : Prop

structure ModelTheoryGroupsEvidence {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} (M : ModelTheoryGroupsPackage C) where
  firstOrderLanguageDefinedClosed : M.firstOrderLanguageDefined
  modelClassAxiomatizedClosed : M.modelClassAxiomatized
  ultraproductConstructionClosed : M.ultraproductConstruction
  elementaryEquivalenceCharacterizationClosed : M.elementaryEquivalenceCharacterization

def ModelTheoryGroupsClosed {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} (M : ModelTheoryGroupsPackage C) : Prop :=
  M.firstOrderLanguageDefined ∧ M.modelClassAxiomatized ∧ M.ultraproductConstruction ∧ M.elementaryEquivalenceCharacterization

theorem model_theory_groups_closed_from_evidence
    {S : MetamathematicalGroupSignaturePackage} {C : GroupTheoryCompletenessPackage S}
    (M : ModelTheoryGroupsPackage C) (E : ModelTheoryGroupsEvidence M) : ModelTheoryGroupsClosed M := by
  exact And.intro E.firstOrderLanguageDefinedClosed
    (And.intro E.modelClassAxiomatizedClosed
      (And.intro E.ultraproductConstructionClosed E.elementaryEquivalenceCharacterizationClosed))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse