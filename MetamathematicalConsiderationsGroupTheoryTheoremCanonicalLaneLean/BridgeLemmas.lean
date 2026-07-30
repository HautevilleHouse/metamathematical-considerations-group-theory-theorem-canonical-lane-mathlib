import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MetamathematicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetamathematicalConsiderationsGroupTheoryTheoremCanonicalLaneLean
end HautevilleHouse