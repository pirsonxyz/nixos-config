{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "GruvboxDark";
      cursor-style = "bar";
      font-family = "JetBrains Mono";
      font-size = 11;
      keybind = [
        "ctrl+d=new_split:right"
        "ctrl+shift+d=new_split:down"
        "ctrl+up=resize_split:up,10"
        "ctrl+down=resize_split:down,10"
        "ctrl+left=resize_split:left,10"
        "ctrl+right=resize_split:right,10"
        "ctrl+shift+s=toggle_fullscreen"
        "ctrl+shift+c=clear_screen"
      ];
    };
  };
}
