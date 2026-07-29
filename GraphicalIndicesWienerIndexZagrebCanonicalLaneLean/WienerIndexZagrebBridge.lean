import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.WienerIndex
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.ZagrebIndices

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (W : WienerIndexPackage) (Z : ZagrebIndicesPackage),
    WienerIndexClosed W ∧ ZagrebIndicesClosed Z

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Placeholder: assumes A provides witness
  exact A.object.conclusion

end HautevilleHouse
end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean