import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.WienerIndex
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.ZagrebIndices

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure IndexRelationsPackage {G : MolecularGraph} (W : WienerIndexPackage G) (Z : ZagrebIndicesPackage G) where
  inequalityWienerZagreb : Prop
  boundFirstZagreb : Prop
  relationProved : Prop

structure IndexRelationsEvidence {G : MolecularGraph} {W : WienerIndexPackage G} {Z : ZagrebIndicesPackage G} (R : IndexRelationsPackage W Z) where
  inequalityWienerZagrebClosed : R.inequalityWienerZagreb
  boundFirstZagrebClosed : R.boundFirstZagreb
  relationProvedClosed : R.relationProved

def IndexRelationsClosed {G : MolecularGraph} {W : WienerIndexPackage G} {Z : ZagrebIndicesPackage G} (R : IndexRelationsPackage W Z) : Prop :=
  R.inequalityWienerZagreb ∧ R.boundFirstZagreb ∧ R.relationProved

theorem index_relations_closed_from_evidence {G : MolecularGraph} {W : WienerIndexPackage G} {Z : ZagrebIndicesPackage G} (R : IndexRelationsPackage W Z) (E : IndexRelationsEvidence R) :
    IndexRelationsClosed R := by
  exact And.intro E.inequalityWienerZagrebClosed (And.intro E.boundFirstZagrebClosed E.relationProvedClosed)

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse