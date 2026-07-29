import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure ConnectivityPackage {G : WienerIndexPackage} {Z : ZagrebIndexPackage} where
  graphConnected : Prop
  pathDistanceDefined : Prop

def ConnectivityClosed {G : WienerIndexPackage} {Z : ZagrebIndexPackage} (C : ConnectivityPackage G Z) : Prop :=
  C.graphConnected ∧ C.pathDistanceDefined

theorem connectivity_closed_implies_wiener {G : WienerIndexPackage} {Z : ZagrebIndexPackage}
    (C : ConnectivityPackage G Z) (H : ConnectivityClosed C) :
    WienerIndexClosed G := by
  sorry

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
