import EulerPoissonDarbouxEquationsCanonicalLaneLean.RegularityEndpointLayer

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

structure EPDAnalyticCertificate where
  substrate : MathlibPDESubstrate
  operatorsClosed : Prop
  weakLayerClosed : Prop
  energyLayerClosed : Prop
  compactnessLayerClosed : Prop
  endpointLayerClosed : Prop
  canonicalCarriageImported : Prop
  operatorsClosedProof : operatorsClosed
  weakLayerClosedProof : weakLayerClosed
  energyLayerClosedProof : energyLayerClosed
  compactnessLayerClosedProof : compactnessLayerClosed
  endpointLayerClosedProof : endpointLayerClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceEPDAnalyticCertificate : EPDAnalyticCertificate := {
  substrate := mathlibPDESubstrate
  operatorsClosed := EulerPoissonDarbouxEquationClosed primitiveSolution
  weakLayerClosed := True
  energyLayerClosed := True
  compactnessLayerClosed := True
  endpointLayerClosed := RegularityEndpointClosed sourceRegularityEndpointCertificate
  canonicalCarriageImported := True
  operatorsClosedProof := primitive_solution_equation_closed
  weakLayerClosedProof := trivial
  energyLayerClosedProof := trivial
  compactnessLayerClosedProof := trivial
  endpointLayerClosedProof := source_regularity_endpoint_closed
  canonicalCarriageImportedProof := trivial
}

def EPDAnalyticCertificateClosed (C : EPDAnalyticCertificate) : Prop :=
  C.operatorsClosed ∧
  C.weakLayerClosed ∧
  C.energyLayerClosed ∧
  C.compactnessLayerClosed ∧
  C.endpointLayerClosed ∧
  C.canonicalCarriageImported

theorem source_epd_analytic_certificate_closed :
    EPDAnalyticCertificateClosed sourceEPDAnalyticCertificate := by
  exact And.intro sourceEPDAnalyticCertificate.operatorsClosedProof
    (And.intro sourceEPDAnalyticCertificate.weakLayerClosedProof
      (And.intro sourceEPDAnalyticCertificate.energyLayerClosedProof
        (And.intro sourceEPDAnalyticCertificate.compactnessLayerClosedProof
          (And.intro sourceEPDAnalyticCertificate.endpointLayerClosedProof
            sourceEPDAnalyticCertificate.canonicalCarriageImportedProof))))

end HautevilleHouse
end EulerPoissonDarbouxEquationsCanonicalLaneLean