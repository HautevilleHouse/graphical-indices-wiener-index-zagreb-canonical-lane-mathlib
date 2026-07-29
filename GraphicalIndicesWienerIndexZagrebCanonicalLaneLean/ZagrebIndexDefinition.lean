import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure ZagrebIndexPackage where
  molecularGraph : Type u
  vertexDegrees : Type v
  firstZagreb : Nat
  secondZagreb : Nat
  vertexDegreesComputed : Prop
  firstZagrebComputed : Prop
  secondZagrebComputed : Prop

structure ZagrebIndexEvidence (Z : ZagrebIndexPackage) where
  vertexDegreesComputedClosed : Z.vertexDegreesComputed
  firstZagrebComputedClosed : Z.firstZagrebComputed
  secondZagrebComputedClosed : Z.secondZagrebComputed

def ZagrebIndexClosed (Z : ZagrebIndexPackage) : Prop :=
  Z.vertexDegreesComputed ∧ Z.firstZagrebComputed ∧ Z.secondZagrebComputed

theorem zagreb_index_closed_from_evidence (Z : ZagrebIndexPackage)
    (E : ZagrebIndexEvidence Z) : ZagrebIndexClosed Z := by
  exact And.intro E.vertexDegreesComputedClosed
    (And.intro E.firstZagrebComputedClosed E.secondZagrebComputedClosed)

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
