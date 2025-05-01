{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "pirson";
    homeDirectory = "/home/pirson";
    stateVersion = "24.11";
  };
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    neofetch
    btop
    neovim
    zoxide
    keepassxc
    nodejs
    python314
    rustup
    fzf
    lazygit
    vesktop
    obs-studio
    go
    heroic
    windsurf
    code-cursor
    yazi
    mpv
    ffmpeg
    obsidian
    libreoffice
    kdePackages.kolourpaint
    binsider
    deno
    (uutils-coreutils.override {prefix = "";})
  ];
  imports = [
    ./modules/ghostty.nix
    ./modules/nushell.nix
    ./modules/git.nix
  ];
  programs = {
    carapace.enable = true;
    carapace.enableNushellIntegration = true;
    gh = {
      enable = true;
      gitCredentialHelper = {
        enable = true;
        hosts = ["https://github.com"];
      };
    };
    starship = {
        enable = true;
        enableNushellIntegration = true;
        settings = {
            character = {
    success_symbol = "[\\$](bold gray)";
    error_symbol = "[✗](bold red)";
  };
          };
      };
    
    atuin.enable = true;
    bat.enable = true;
    zoxide.enableNushellIntegration = true;
  };

  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "pirson@pirson.xyz";
        name = "pirsonxyz";
      };
    };
  };
}
