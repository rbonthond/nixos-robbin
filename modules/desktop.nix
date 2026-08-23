{pkgs, ...}: {
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  fonts.fontconfig.enable = true;

  programs = {
    firefox = {
      enable = true;
      configPath = ".mozilla/firefox";
      package = pkgs.firefox.override {
        cfg.enablePlasmaBrowserIntegration = true;
      };
    };

    vscode = {
      enable = true;
      profiles.default.enableUpdateCheck = false;
    };
  };

  services.kdeconnect.enable = true;
}
