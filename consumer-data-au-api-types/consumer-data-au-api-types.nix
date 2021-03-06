{ mkDerivation, aeson, aeson-diff, aeson-pretty, attoparsec, base
, base64-bytestring, bytestring, constraints, containers
, contravariant, country, cryptonite, dependent-map, dependent-sum
, dependent-sum-template, errors, exceptions, ghc-prim, hedgehog
, hspec, http-client, jose, lens, memory, mmorph, modern-uri
, monad-time, mtl, nat, network-uri, profunctors, semigroupoids
, servant, servant-client, servant-client-core, servant-server
, servant-waargonaut, stdenv, tagged, tasty, tasty-discover
, tasty-golden, tasty-hedgehog, tasty-hunit, template-haskell
, temporary-rc, text, time, transformers, unordered-containers
, waargonaut, wai, warp
}:
mkDerivation {
  pname = "consumer-data-au-api-types";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base base64-bytestring bytestring constraints containers
    contravariant country cryptonite dependent-map dependent-sum
    dependent-sum-template errors exceptions ghc-prim jose lens memory
    mmorph modern-uri monad-time mtl nat network-uri semigroupoids
    servant servant-client servant-client-core servant-waargonaut
    tagged template-haskell text time transformers unordered-containers
    waargonaut
  ];
  testHaskellDepends = [
    aeson aeson-diff aeson-pretty attoparsec base base64-bytestring
    bytestring constraints containers contravariant country cryptonite
    dependent-map dependent-sum dependent-sum-template errors
    exceptions ghc-prim hedgehog hspec http-client jose lens memory
    mmorph modern-uri monad-time mtl nat network-uri profunctors
    semigroupoids servant servant-client servant-client-core
    servant-server servant-waargonaut tagged tasty tasty-discover
    tasty-golden tasty-hedgehog tasty-hunit template-haskell
    temporary-rc text time transformers unordered-containers waargonaut
    wai warp
  ];
  testToolDepends = [ tasty-discover ];
  description = "Api Types for the Australian Consumer Data Rights Specification";
  license = stdenv.lib.licenses.mit;
}
