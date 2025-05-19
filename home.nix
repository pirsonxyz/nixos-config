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
    adwaita-icon-theme
    revolt-desktop
    jetbrains-mono
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
          success_symbol = "[:](bold gray)";
          error_symbol = "[✗](bold red)";
        };
        time = {
          disabled = true;
        };
      };
    };
    atuin.enable = true;
    bat.enable = true;
    zoxide.enableNushellIntegration = true;
    helix = {
      enable = true;
      languages = {
        language-server.typescript-language-server = {
          command = "/home/pirson/.local/share/nvim/mason/bin/typescript-language-server";
        };
        language-server.html-lsp = {
          command = "/home/pirson/.local/share/nvim/mason/bin/vscode-html-language-server";
          args = ["--stdio"];
        };
        language-server.clangd = {
          command = "/home/pirson/.local/share/nvim/mason/bin/clangd";
        };

        language = [
          {
            name = "html";
            language-servers = ["html-lsp"];
            auto-format = true;
          }
        ];
      };

      settings = {
        theme = "gruvbox";
        editor = {
          line-number = "relative";
        };
      };
    };
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
  programs.ssh = {
    addKeysToAgent = "yes";
  };
home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 8;
    gtk.enable = true; # Apply to GTK applications
    x11.enable = true;
  };
}

