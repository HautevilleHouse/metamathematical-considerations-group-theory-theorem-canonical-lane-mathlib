import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupTheoryMetatheoremPackage where
  metatheoremStatement : Prop
  proofSketch : Prop
  formalSystem : FormalSystemType
  metatheoremClosed : metatheoremStatement
  proofSketchClosed : proofSketch

definition MetatheoremClosed (P : GroupTheoryMetatheoremPackage) : Prop :=
  P.metatheoremStatement ∧ P.proofSketch

theorem metatheorem_closed_from_package (P : GroupTheoryMetatheoremPackage) : MetatheoremClosed P := by
  exact And.intro P.metatheoremClosed P.proofSketchClosed

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse