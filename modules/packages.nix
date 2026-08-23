{pkgs, ...}: {
  home.packages = with pkgs; [
    # Command-line utilities
    aha
    cachix
    colordiff
    coreutils
    dysk
    fd
    figlet
    gzip
    httpie
    hyperfine
    mc
    ncdu
    p7zip
    pigz
    procs
    rclone
    ripgrep
    rsync
    tig
    tree
    unzip
    xz

    # Development tools and language runtimes
    alejandra
    go
    nextflow
    p4
    p4v
    perl
    python312
    ruby
    rustc

    # Alternative shells
    ksh
    tcsh
    zsh

    # Desktop applications
    blender
    google-chrome
    jetbrains.datagrip
    jetbrains.goland
    jetbrains.pycharm
    jetbrains.webstorm
    kdePackages.ark
    kdePackages.kamoso
    kdePackages.kate
    kdePackages.kdevelop
    kdiff3
    krita
    libreoffice-qt
    meld
    simple-scan
    slack
    snapshot
    zoom-us

    # Containers and system diagnostics
    apptainer
    clinfo
    fwupd
    lm_sensors
    mesa-demos
    pciutils
    vulkan-tools
    wayland-utils
    xdpyinfo

    # Fonts
    nerd-fonts.jetbrains-mono
  ];
}
