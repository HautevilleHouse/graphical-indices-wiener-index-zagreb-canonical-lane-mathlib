import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure WienerZagrebAdmittedObject where
  graph : Type
  vertexSet : Finset graph
  edgeSet : Finset (graph × graph)
  wienerIndex : ℕ
  zagrebIndex : ℕ
  conclusion : Prop

structure WienerIndexPackage where
  graph : Type
  wienerIndexComputed : Prop
  distanceMatrixKnown : Prop

def WienerIndexClosed (W : WienerIndexPackage) : Prop :=
  W.wienerIndexComputed ∧ W.distanceMatrixKnown

structure ZagrebIndexPackage where
  graph : Type
  firstZagrebComputed : Prop
  secondZagrebComputed : Prop
  zagrebIndexClosed : Prop

def ZagrebIndexClosed (Z : ZagrebIndexPackage) : Prop :=
  Z.firstZagrebComputed ∧ Z.secondZagrebComputed ∧ Z.zagrebIndexClosed

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
