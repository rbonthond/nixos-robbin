{...}: {
  programs = {
    delta = {
      enable = true;
      enableGitIntegration = true;
    };

    git = {
      enable = true;
      lfs.enable = true;
      settings = {
        user = {
          name = "Robbin Bonthond";
          email = "robbin@bonthond.com";
        };
        alias = {
          ci = "commit";
          co = "checkout";
        };
        color = {
          diff = "auto";
          status = "auto";
          branch = "auto";
          ui = "auto";
        };
        init.defaultBranch = "main";
        fetch.prune = true;
        push.autoSetupRemote = true;
      };
    };
  };
}
