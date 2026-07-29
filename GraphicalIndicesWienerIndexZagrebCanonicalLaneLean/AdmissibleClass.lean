import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.WienerIndexDefinition
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.ZagrebIndexDefinition

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure AdmissibleClass where
  object : Type u
  wienerEvidence : WienerIndexEvidence (object : WienerIndexPackage)
  zagrebEvidence : ZagrebIndexEvidence (object : ZagrebIndexPackage)
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
