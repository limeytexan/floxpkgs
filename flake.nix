{
  

  # Declaration of external resources
  # =================================

  # =================================


  description = "Floxpkgs/Project Template";
  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";

  # Template DO NOT EDIT
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # TODO: injected by the cli, or used via registry?
  inputs.flox-floxpkgs.url = "github:flox/floxpkgs";
  inputs.ptree.url = "github:limeytexan/ptree";
  outputs = args @ {flox-floxpkgs, ...}: flox-floxpkgs.capacitor args (import ./flox.nix);
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
}
