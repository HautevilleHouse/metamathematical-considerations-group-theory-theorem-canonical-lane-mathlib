import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.ModelTheoryGroups

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure CategoricalGroupsPackage {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} {M : ModelTheoryGroupsPackage C} where
  categoryOfGroupsDefined : Prop
  limitConstruction : Prop
  colimitConstruction : Prop
  freeGroupConstruction : Prop
  presentedGroupConstruction : Prop

structure CategoricalGroupsEvidence {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} {M : ModelTheoryGroupsPackage C}
    (Cat : CategoricalGroupsPackage M) where
  categoryOfGroupsDefinedClosed : Cat.categoryOfGroupsDefined
  limitConstructionClosed : Cat.limitConstruction
  colimitConstructionClosed : Cat.colimitConstruction
  freeGroupConstructionClosed : Cat.freeGroupConstruction
  presentedGroupConstructionClosed : Cat.presentedGroupConstruction

def CategoricalGroupsClosed {S : MetamathematicalGroupSignaturePackage}
    {C : GroupTheoryCompletenessPackage S} {M : ModelTheoryGroupsPackage C}
    (Cat : CategoricalGroupsPackage M) : Prop :=
  Cat.categoryOfGroupsDefined ∧ Cat.limitConstruction ∧ Cat.colimitConstruction ∧
  Cat.freeGroupConstruction ∧ Cat.presentedGroupConstruction

theorem categorical_groups_closed_from_evidence
    {S : MetamathematicalGroupSignaturePackage} {C : GroupTheoryCompletenessPackage S}
    {M : ModelTheoryGroupsPackage C} (Cat : CategoricalGroupsPackage M)
    (E : CategoricalGroupsEvidence Cat) : CategoricalGroupsClosed Cat := by
  exact And.intro E.categoryOfGroupsDefinedClosed
    (And.intro E.limitConstructionClosed
      (And.intro E.colimitConstructionClosed
        (And.intro E.freeGroupConstructionClosed E.presentedGroupConstructionClosed)))

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse