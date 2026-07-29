import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

structure Graph where
  VertexSet : Type
  EdgeSet : Type
  adjacency : EdgeSet → (VertexSet × VertexSet)
  finite : Fintype VertexSet
  undirected : ∀ e, (adjacency e).1 ≠ (adjacency e).2 → ∃ e', adjacency e' = ((adjacency e).2, (adjacency e).1)
  noLoops : ∀ e, (adjacency e).1 ≠ (adjacency e).2

structure DistanceFunction (G : Graph) where
  dist : G.VertexSet → G.VertexSet → ℕ
  reflexive : ∀ v, dist v v = 0
  symmetric : ∀ u v, dist u v = dist v u
  triangleInequality : ∀ u v w, dist u v ≤ dist u w + dist w v
  graphCompatible : ∀ e : G.EdgeSet, dist ((G.adjacency e).1) ((G.adjacency e).2) = 1

def WienerIndex (G : Graph) (d : DistanceFunction G) : ℕ :=
  (Finset.filter (λ (uv : G.VertexSet × G.VertexSet) => uv.1 ≠ uv.2) (Finset.product (Finset.univ : Finset G.VertexSet) (Finset.univ : Finset G.VertexSet))).sum (λ uv => d.dist uv.1 uv.2) / 2

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse