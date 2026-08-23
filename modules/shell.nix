{...}: {
  programs = {
    bash.enable = true;
    bat.enable = true;
    command-not-found.enable = true;
    codex.enable = true;
    dircolors.enable = true;
    fastfetch.enable = true;
    fzf.enable = true;
    htop.enable = true;
    jq.enable = true;
    starship.enable = true;
    tmux.enable = true;

    direnv = {
      enable = true;
      enableBashIntegration = true;
      nix-direnv.enable = true;
    };

    lsd = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
