{ pkgs, config, ... }: {

  home = {
    stateVersion = "22.11";
    username = "robbin";
    homeDirectory = "/home/robbin";
  };

  home.packages = with pkgs; [
     firefox google-chrome
     bash direnv nix-direnv
     vim vscode kate libreoffice
     wget curl tmux jq mc neofetch
     git git-lfs delta tig
     htop procs lfs rclone rsync
     tree bat ncdu exa ripgrep fd fzf
  ];

  programs = {
    home-manager.enable = true;
    bash.enable = true;
    command-not-found.enable = true;
    dircolors.enable = true;
    direnv.enable = true;
    direnv.nix-direnv.enable = true;
    git.enable = true;
    htop.enable = true;
    jq.enable = true;
    starship.enable = true;
  };

  programs.git = {
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

}
