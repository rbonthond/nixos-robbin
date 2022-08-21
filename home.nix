{ pkgs, config, ... }: {

  home = {
    stateVersion = "22.11";
    username = "robbin";
    homeDirectory = "/home/robbin";
  };

  home.packages = with pkgs; [
     firefox google-chrome
     bash coreutils ksh tcsh zsh
     gzip p7zip pigz unzip xz
     direnv nix-direnv
     vim vscode kate libreoffice
     wget curl tmux jq mc neofetch
     git git-lfs delta tig p4 p4v
     htop procs lfs rclone rsync
     tree bat ncdu exa ripgrep fd fzf
     alejandra cachix
     poetry httpie hyperfine
     kdiff3 meld colordiff
     xorg.xdpyinfo glxinfo pciutils aha fwupd
  ];

  programs = {
    home-manager.enable = true;
    bash.enable = true;
    command-not-found.enable = true;
    dircolors.enable = true;
    htop.enable = true;
    jq.enable = true;
    starship.enable = true;
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv = { enable = true; };
  };

  programs.git = {
    enable = true;
    lfs.enable = true;
    delta.enable = true;
    userName = "Robbin Bonthond";
    userEmail = "robbin@bonthond.com";
    aliases = {
      ci = "commit";
      co = "checkout";
    };
    extraConfig = {
      color = {
        diff = "auto";
        status = "auto";
        branch = "auto";
        ui = "auto";
      };
    };
  };

  programs.exa = {
    enable = true;
    enableAliases = true;
  };
  
}