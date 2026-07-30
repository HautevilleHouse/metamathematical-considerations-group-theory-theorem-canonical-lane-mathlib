import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure PrimitiveGroupLogicalFramework where
  Group : Type u
  GroupOperation : Group → Group → Group
  Identity : Group
  Inverse : Group → Group
  GroupLaws : Prop
  GroupLawsTerm : GroupLaws

structure PrimitiveLogicalSystem where
  Formula : Type v
  LogicalConnectives : Formula → Formula → Formula
  Quantifiers : (Group → Formula) → Formula
  EqualityAxiom : Prop
  EqualityAxiomTerm : EqualityAxiom

structure PrimitiveMetamathematicalContext (G : PrimitiveGroupLogicalFramework) (L : PrimitiveLogicalSystem) where
  Interpretation : G.Group → L.Formula
  AssignmentsConsistent : Prop
  AssignmentsConsistentTerm : AssignmentsConsistent

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse