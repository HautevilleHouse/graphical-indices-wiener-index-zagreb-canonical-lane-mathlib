import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.WienerIndexDefinition
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.ZagrebIndexDefinition

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WienerIndexClosed (A.object : WienerIndexPackage) ∧
  ZagrebIndexClosed (A.object : ZagrebIndexPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have hW : WienerIndexClosed (A.object : WienerIndexPackage) :=
    wiener_index_closed_from_evidence (A.object : WienerIndexPackage) A.wienerEvidence
  have hZ : ZagrebIndexClosed (A.object : ZagrebIndexPackage) :=
    zagreb_index_closed_from_evidence (A.object : ZagrebIndexPackage) A.zagrebEvidence
  exact And.intro hW hZ

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
