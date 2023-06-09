{ pkgs, config, ... }:

{
  packages = [
    pkgs.stdenv.cc.cc.lib
    pkgs.helix
    pkgs.neovim

  ];
  languages.python = {
    enable = true;
    package = pkgs.python311;
    # venv.enable = true;
    poetry.enable = true;
    # poetry.activate.enable = true;
    # poetry.install.enable = true;
  };
  containers."package".name = "package";

  containers."package".version= "devenv";

  containers."package".registry = "docker://";

  containers."package".startupCommand = "bash";
}