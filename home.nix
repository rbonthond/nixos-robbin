{
  pkgs,
  config,
  ...
}: {
  home = {
    stateVersion = "22.11";
    username = "robbin";
    homeDirectory = "/home/robbin";
  };

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xfg.dpi" = 172;
  };

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    aha
    alejandra
    apptainer
    bash
    bat
    blender
    cachix
    clinfo
    colordiff
    coreutils
    curl
    delta
    direnv
    lsd
    fd
    firefox
    fwupd
    fzf
    git
    git-lfs
    glxinfo
    go
    google-chrome
    gzip
    htop
    httpie
    hyperfine
    jetbrains.datagrip
    jetbrains.goland
    jetbrains.pycharm-professional
    jetbrains.webstorm
    jq
    kate
    kdevelop
    kdiff3
    krita
    ksh
    lfs
    libreoffice-qt
    libsForQt5.libksysguard
    lm_sensors
    mc
    meld
    ncdu
    nerd-fonts.jetbrains-mono
    neofetch
    nextflow
    nix-direnv
    p4
    p4v
    p7zip
    pciutils
    perl
    pigz
    procs
    python312
    rclone
    ripgrep
    rsync
    ruby
    rustc
    slack
    tcsh
    tig
    tmux
    tree
    unzip
    vim
    vscode
    vulkan-tools
    wayland-utils
    wget
    xorg.xdpyinfo
    xz
    zoom-us
    zsh
    whatsapp-for-linux
  ];

  programs = {
    home-manager.enable = true;
    bash.enable = true;
    command-not-found.enable = true;
    dircolors.enable = true;
    htop.enable = true;
    jq.enable = true;
    starship.enable = true;
    direnv = {
      enable = true;
      enableBashIntegration = true;
      nix-direnv = {enable = true;};
    };
    git = {
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
    lsd = {
      enable = true;
      enableAliases = true;
    };
    vscode = {
      enable = true;
      enableUpdateCheck = false;
    };
    firefox.package = pkgs.firefox.override {
      cfg = {enablePlasmaBrowserIntegration = true;};
    };
  };

  #services.plasma5Packages.kdeconnect.enable = true;
  services.kdeconnect.enable = true;
}
