import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalIndicesWienerIndexZagrebCanonicalLaneLean.MolecularGraph

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure ZagrebIndicesPackage (G : MolecularGraph) where
  firstZagreb : Nat
  secondZagreb : Nat
  firstZagrebFormula : Prop
  secondZagrebFormula : Prop

def ZagrebIndicesClosed {G : MolecularGraph} (Z : ZagrebIndicesPackage G) : Prop :=
  Z.firstZagrebFormula ∧ Z.secondZagrebFormula

theorem zagreb_indices_closed_from_package {G : MolecularGraph} (Z : ZagrebIndicesPackage G) (E : Z.firstZagrebFormula ∧ Z.secondZagrebFormula) : ZagrebIndicesClosed Z :=
  E

structure ZagrebIndexClosure {G : MolecularGraph} (Z : ZagrebIndicesPackage G) where
  bridgeClosed : ZagrebIndicesClosed Z
  gateClosed : Prop

theorem zagreb_index_endgame {G : MolecularGraph} (Z : ZagrebIndicesPackage G) (E : Z.firstZagrebFormula ∧ Z.secondZagrebFormula) (G' : Prop) : ZagrebIndexClosure Z :=
  { bridgeClosed := zagreb_indices_closed_from_package Z E, gateClosed := G' }

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse
