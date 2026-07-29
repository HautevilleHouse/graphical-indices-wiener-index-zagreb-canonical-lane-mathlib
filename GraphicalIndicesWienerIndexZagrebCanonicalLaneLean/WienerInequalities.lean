import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalIndicesWienerIndexZagrebCanonicalLaneLean

theorem wiener_first_zagreb_inequality (G : Graph) (d : DistanceFunction G) (deg : DegreeSequence G) :
  WienerIndex G d ≥ FirstZagrebIndex G deg := by
  sorry

theorem wiener_second_zagreb_inequality (G : Graph) (d : DistanceFunction G) (deg : DegreeSequence G) :
  WienerIndex G d ≥ SecondZagrebIndex G deg := by
  sorry

theorem first_zagreb_second_zagreb_inequality (G : Graph) (deg : DegreeSequence G) :
  FirstZagrebIndex G deg ≥ SecondZagrebIndex G deg := by
  sorry

end GraphicalIndicesWienerIndexZagrebCanonicalLaneLean
end HautevilleHouse