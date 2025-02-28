{
  programs.git = {
    enable = true;
    userName = "Pirson Bethancourt";
    userEmail = "pirson@pirson.xyz";
    extraConfig = {
        credential.helper = "libsecret";
      };

  };
}
