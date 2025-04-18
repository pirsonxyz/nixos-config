{
  programs.nushell = {
    enable = true;
    # The config.nu can be anywhere you want if you like to edit your Nushell with Nu
    #configFile.source = ./.../config.nu;
    # for editing directly to config.nu
    extraConfig = ''
      $env.config.buffer_editor = "nvim"
      $env.config.show_banner = false
      $env.EDITOR = "nvim"
      $env.PATH = ($env.PATH | append "/home/pirson/.bun/bin/")
      source ~/.zoxide.nu
      source ~/.atuin.nu
    '';
    shellAliases = {
      v = "nvim";
      vi = "nvim";
      vim = "nvim";
      cat = "bat --theme gruvbox-dark";
      nano = "hx";
      c = "clear";
      nix-shell = "nix-shell --run nu";
      server = "ssh server.pirson.xyz -p 42069"; # super secret ip
      home = "nvim ~/.config/nixos";
      rebuild = "home-manager switch --flake /etc/nixos/.";
      rebuild-nix = "sudo nixos-rebuild switch --flake /etc/nixos/.";
    };
  };
}
