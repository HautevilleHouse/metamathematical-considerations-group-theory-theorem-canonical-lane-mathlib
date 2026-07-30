import canonicalLaneMathlib.AdmissibleClass
import freeGroupViaMathlib

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

structure GroupPresentation where
  generators : List String
  relations : List (List String)
  presentedGroup : GroupSignature
  presentationValid : presentedGroup.carrier ≃* freeGroup / normalClosure relations

def GroupPresentationClosed (P : GroupPresentation) : Prop :=
  P.presentationValid

theorem group_presentation_closed (P : GroupPresentation) : GroupPresentationClosed P := by
  exact P.presentationValid

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse
