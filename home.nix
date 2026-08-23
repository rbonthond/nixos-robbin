{...}: {
  imports = [
    ./modules/desktop.nix
    ./modules/git.nix
    ./modules/packages.nix
    ./modules/shell.nix
  ];

  home = {
    stateVersion = "22.11";
    username = "robbin";
    homeDirectory = "/home/robbin";
  };

  programs.home-manager.enable = true;
}
