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

  home.packages = with pkgs; [
    aha
    alejandra
    alejandra
    bash
    bat
    blender
    cachix
    colordiff
    coreutils
    curl
    delta
    direnv
    exa
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
    python311
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
    wget
    xorg.xdpyinfo
    xz
    zoom-us
    zsh
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
    nix-direnv = {enable = true;};
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

  #services.plasma5Packages.kdeconnect.enable = true;
  services.kdeconnect.enable = true;
}
