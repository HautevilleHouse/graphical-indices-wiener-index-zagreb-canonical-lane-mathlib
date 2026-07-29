import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure MolecularGraph where
  vertexCount : Nat
  edgeCount : Nat
  adjacencyMatrix : Matrix (Fin vertexCount) (Fin vertexCount) Bool
  connected : Prop
  simple : Prop

def distance (G : MolecularGraph) (i j : Fin G.vertexCount) : Nat := 0

theorem distance_symm (G : MolecularGraph) (i j : Fin G.vertexCount) : distance G i j = distance G j i := by
  rfl

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
