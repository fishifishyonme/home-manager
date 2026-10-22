{
  self,
  config,
  ...
}:
{
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        # extensions.force = true;
        extensions.settings = {
          "FirefoxColor@mozilla.com".force = true;
        };
      };
    };
  };
}
