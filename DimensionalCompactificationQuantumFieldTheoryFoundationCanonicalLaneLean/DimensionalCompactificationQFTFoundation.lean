import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQFTFoundation

def sourceRepository : String := "dimensional-compactification-qft-foundation"
def sourceDescription : String := "Dimensional Compactification Quantum Field Theory Foundation"
def sourceTheoremBoundaryClaim : String := "Classical Yang-Mills existence and mass gap on compactified spacetime"
def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List String :=
  ["CITATION.cff", "README.md", "artifacts/constants_extracted.json",
   "artifacts/constants_extraction_inputs.json", "artifacts/constants_registry.json",
   "artifacts/promotion_report.json", "artifacts/stitch_constants.json",
   "notes/EG1_public.md", "notes/EG2_public.md", "notes/EG3_public.md",
   "notes/EG4_public.md", "notes/IDENTIFICATION_BRIDGE.md",
   "paper/CANONICAL_ROUTING_INDEX.md", "paper/EXTRACTION_SPEC.md",
   "paper/QFT_COMPACTIFICATION_PREPRINT.md", "repro/REPRO_PACK.md",
   "repro/THIRD_PARTY_RERUN_PROTOCOL.md", "repro/certificate_baseline.json",
   "repro/run_repro.sh", "scripts/extract_constants.py",
   "scripts/promote_constants.py", "scripts/release_gate.py",
   "scripts/update_manifest.py", "scripts/qft_closure_guard.py"]

def reviewerManifestEntryCount : Nat := 24

end DimensionalCompactificationQFTFoundation
end HautevilleHouse