{ makeWrapper, procps, psmisc, stdenv }:

stdenv.mkDerivation rec {
  pname = "ptree";
  version = "0.0.0";
  src = ./.; # i.e. no source required

  # Add runtime dependencies to buildInputs.
  buildInputs = [ procps psmisc ];

  # Add buildtime dependencies (not required at runtime)
  # to nativeBuildInputs.
  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out/bin
    makeWrapper ${psmisc}/bin/pstree $out/bin/${pname} \
      --argv0 ${pname} \
      --add-flags "-hpaGU"
    makeWrapper ${procps}/bin/watch $out/bin/w${pname} \
      --argv0 w${pname} \
      --add-flags "${psmisc}/bin/pstree -hpaGU"
  '';
}
