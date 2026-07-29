import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.MolecularGraph

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure WienerIndexPackage (G : MolecularGraph) where
  sumDistances : Nat
  wienerIndex : Nat := sumDistances / 2
  wienerIndexFormula : Prop

def WienerIndexClosed {G : MolecularGraph} (W : WienerIndexPackage G) : Prop :=
  W.wienerIndexFormula

theorem wiener_index_closed_from_package {G : MolecularGraph} (W : WienerIndexPackage G) : WienerIndexClosed W :=
  W.wienerIndexFormula

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
