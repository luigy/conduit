{ mkDerivation, async, attoparsec, base, bytestring
, bytestring-builder, conduit, directory, exceptions, filepath
, gauge, hspec, network, primitive, process, QuickCheck, resourcet
, stdenv, stm, streaming-commons, text, transformers
, transformers-base, typed-process, unliftio-core
}:
mkDerivation {
  pname = "conduit-extra";
  version = "1.3.0";
  src = ./.;
  libraryHaskellDepends = [
    async attoparsec base bytestring conduit directory filepath network
    primitive process resourcet stm streaming-commons text transformers
    typed-process unliftio-core
  ];
  testHaskellDepends = [
    async attoparsec base bytestring bytestring-builder conduit
    directory exceptions hspec process QuickCheck resourcet stm
    streaming-commons text transformers transformers-base
  ];
  benchmarkHaskellDepends = [
    base bytestring bytestring-builder conduit gauge transformers
  ];
  homepage = "http://github.com/snoyberg/conduit";
  description = "Batteries included conduit: adapters for common libraries";
  license = stdenv.lib.licenses.mit;
}
