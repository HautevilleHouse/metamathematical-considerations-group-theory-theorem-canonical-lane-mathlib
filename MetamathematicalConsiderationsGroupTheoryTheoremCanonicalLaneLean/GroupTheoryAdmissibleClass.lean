import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupAdmittedObject where
  G : Type u
  groupStructure : Group G
  finiteGenerated : Prop
  simple : Prop
  finitePresentation : Prop
  conclusion : finitePresentation

structure MetamathematicalAdmissibleClass where
  object : GroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MetamathematicalAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
