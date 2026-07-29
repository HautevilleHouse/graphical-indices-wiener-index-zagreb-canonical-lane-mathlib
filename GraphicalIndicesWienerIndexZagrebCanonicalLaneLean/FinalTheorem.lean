import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.GraphicalIndicesBridge
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.GraphicalIndicesGate

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

def ConstrainedGraphicalIndicesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphical_indices_endgame (A : AdmissibleClass) :
    ConstrainedGraphicalIndicesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
