import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure WienerIndexPackage where
  molecularGraph : Type u
  vertexCount : Nat
  distanceMatrix : Type v
  wienerSum : Nat
  wienerIndex : Nat
  distanceMatrixComputed : Prop
  wienerSumComputed : Prop
  wienerIndexComputed : Prop

structure WienerIndexEvidence (W : WienerIndexPackage) where
  distanceMatrixComputedClosed : W.distanceMatrixComputed
  wienerSumComputedClosed : W.wienerSumComputed
  wienerIndexComputedClosed : W.wienerIndexComputed

def WienerIndexClosed (W : WienerIndexPackage) : Prop :=
  W.distanceMatrixComputed ∧ W.wienerSumComputed ∧ W.wienerIndexComputed

theorem wiener_index_closed_from_evidence (W : WienerIndexPackage)
    (E : WienerIndexEvidence W) : WienerIndexClosed W := by
  exact And.intro E.distanceMatrixComputedClosed
    (And.intro E.wienerSumComputedClosed E.wienerIndexComputedClosed)

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
