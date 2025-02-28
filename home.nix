{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "pirson";
    homeDirectory = "/home/pirson";
    stateVersion = "23.11";
  };
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
    
    vesktop
  ];
  imports = [
    ./modules/git.nix
    ./modules/ghostty.nix
    ./modules/nushell.nix
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
    starship.enable = true;
    atuin.enable = true;
    bat.enable = true;
    zoxide.enableNushellIntegration = true;
  };
}
