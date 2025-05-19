{
  programs.nushell = {
    enable = true;
    # The config.nu can be anywhere you want if you like to edit your Nushell with Nu
    #configFile.source = ./.../config.nu;
    # for editing directly to config.nu
    extraConfig = ''
      $env.config.buffer_editor = "hx"
      $env.config.show_banner = false
      $env.EDITOR = "hx"
      $env.BROWSER = "com.brave.Browser"
      $env.XCURSOR_SIZE = "8"
      $env.PATH = ($env.PATH | append "/home/pirson/.bun/bin/")
      $env.PATH = ($env.PATH | append "/home/pirson/.cargo/bin/")
      $env.PATH = ($env.PATH | append "/home/pirson/.rustup/toolchains/esp/xtensa-esp-elf/esp-14.2.0_20240906/xtensa-esp-elf/bin/")
      $env.LIBCLANG_PATH = "/home/pirson/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-19.1.2_20250225/esp-clang/lib/"
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
      server = "ssh server.pirson.xyz -p 42069"; # 
      home = "nvim ~/.config/nixos";
      rebuild = "home-manager switch --flake /etc/nixos/.";
      rebuild-nix = "sudo nixos-rebuild switch --flake /etc/nixos/.";
    };
  };
}
