{
  programs.git = {
    enable = true;
    userName = "pirsonxyz";
    userEmail = "pirson@pirson.xyz";
    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILj7z/frooN4KqCugg80Y1uZGn4E6bobjQeIs7RMZXDD pirson@pirson.xyz";
      signByDefault = true;
      format = "ssh";
    };
  };
}
