{ lib, ... }:
let
  colors = import ./rose-pine-colors.nix;
in
{
  options.rosePine = {
    main = lib.mkOption {
      type = lib.types.attrsOf lib.types.str;
      default = colors.rosePine.main;
      description = "Rose Pine main color scheme";
    };
    moon = lib.mkOption {
      type = lib.types.attrsOf lib.types.str;
      default = colors.rosePine.moon;
      description = "Rose Pine moon color scheme";
    };
    dawn = lib.mkOption {
      type = lib.types.attrsOf lib.types.str;
      default = colors.rosePine.dawn;
      description = "Rose Pine dawn color scheme";
    };
  };
  config.rosePine = colors.rosePine;
}
