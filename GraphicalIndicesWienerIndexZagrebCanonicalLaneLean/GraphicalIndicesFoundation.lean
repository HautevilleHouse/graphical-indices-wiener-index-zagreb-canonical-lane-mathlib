import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.MolecularGraph
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.WienerIndex
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.ZagrebIndices
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.IndexRelations

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure GraphicalIndicesFoundation where
  graph : MolecularGraph
  graphEvidence : MolecularGraphEvidence graph
  wiener : WienerIndexPackage graph
  wienerEvidence : WienerIndexEvidence wiener
  zagreb : ZagrebIndicesPackage graph
  zagrebEvidence : ZagrebIndicesEvidence zagreb
  relations : IndexRelationsPackage wiener zagreb
  relationsEvidence : IndexRelationsEvidence relations

def GraphicalIndicesFoundationClosed (F : GraphicalIndicesFoundation) : Prop :=
  MolecularGraphClosed F.graph ∧ WienerIndexClosed F.wiener ∧ ZagrebIndicesClosed F.zagreb ∧ IndexRelationsClosed F.relations

theorem graphical_indices_foundation_closed_from_evidence (F : GraphicalIndicesFoundation) : GraphicalIndicesFoundationClosed F := by
  exact And.intro (molecular_graph_closed_from_evidence F.graph F.graphEvidence)
    (And.intro (wiener_index_closed_from_evidence F.wiener F.wienerEvidence)
      (And.intro (zagreb_indices_closed_from_evidence F.zagreb F.zagrebEvidence)
        (index_relations_closed_from_evidence F.relations F.relationsEvidence)))

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse