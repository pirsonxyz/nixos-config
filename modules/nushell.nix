{
  programs.nushell = {
    enable = true;
    # The config.nu can be anywhere you want if you like to edit your Nushell with Nu
    #configFile.source = ./.../config.nu;
    # for editing directly to config.nu
    extraConfig = ''
      $env.config.buffer_editor = "nvim"
      $env.config.show_banner = false
      source ~/.zoxide.nu
      source ~/.atuin.nu
    '';
    shellAliases = {
      vi = "nvim";
      vim = "nvim";
      cat = "bat --theme gruvbox-dark";
      nano = "hx";
      c = "clear";
      nix-shell = "nix-shell --run nu";
      home = "nvim ~/.config/nixos";
      rebuild = "home-manager switch --flake /etc/nixos/.";
      rebuild-nix = "sudo nixos-rebuild switch --flake /etc/nixos/.";
    };
  };
}
