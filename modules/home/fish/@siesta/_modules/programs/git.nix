{
  self,
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    delta
  ];

  programs.git = {
    enable = true;
    signing = {
      key = "F74B0660FE73D27A";
      signByDefault = true;
    };
    settings = {
      user = {
        name = config.home.username;
        email = "103873667+fishifishyonme@users.noreply.github.com";
      };
      safe.directory = "/etc/nixos";
      init = {
        defaultBranch = "main";
      };
      submodule.recurse = true;
      push.recurseSubmodules = "check";
      core.pager = "delta";
      interactive.diffFilter = "delta --color-only";
      delta = {
        navigate = true;
        dark = true;
      };
      merge.conflictStyle = "zdiff3";
    };
  };
}
