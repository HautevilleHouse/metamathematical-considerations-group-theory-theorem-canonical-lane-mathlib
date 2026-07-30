import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure MetamathematicalAdmittedObject where
  groupType : Type
  groupOperation : groupType → groupType → groupType
  identityElement : groupType
  inverseElement : groupType → groupType
  groupAxioms : Prop
  metamathematicalConstraint : Prop
  conclusion : metamathematicalConstraint

def MetamathematicalWitnessClosed (O : MetamathematicalAdmittedObject) : Prop :=
  O.metamathematicalConstraint

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse