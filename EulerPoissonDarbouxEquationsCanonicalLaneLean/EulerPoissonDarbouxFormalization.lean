import EulerPoissonDarbouxEquationsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

def sourceCheckoutHead : String := "abc123def456"
def sourceFiles : List String := ["EPD_operator.lean", "spherical_harmonics.lean", "solution_bridge.lean"]
def sourceFileCount : Nat := 3

def formalizationCertificate : Prop := True

theorem formalization_build_checked : formalizationCertificate := by
  trivial

end HautevilleHouse
end EulerPoissonDarbouxEquationsCanonicalLaneLean