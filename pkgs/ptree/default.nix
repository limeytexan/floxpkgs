{ psmisc, stdenv }:

stdenv.mkDerivation {
  project = "ptree";
  makeFlags = [ "PREFIX=$(out)" ];
  buildInputs = [ psmisc ];
  postPatch = ''
    true
  '';
}
