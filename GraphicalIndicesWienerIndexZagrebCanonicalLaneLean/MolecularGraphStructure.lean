import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure MolecularGraphPackage where
  vertices : Nat
  edges : Nat
  adjacencyMatrix : Matrix (Fin vertices) (Fin vertices) Bool
  adjacencyMatrixSymmetric : Prop
  adjacencyMatrixIrreflexive : Prop

def MolecularGraphClosed (G : MolecularGraphPackage) : Prop :=
  G.adjacencyMatrixSymmetric ∧ G.adjacencyMatrixIrreflexive

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
