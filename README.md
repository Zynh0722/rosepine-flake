# Rose Pine Flake

A flake for the [rose pine](https://rosepinetheme.com/)
color scheme that provides a
nixos and a home-manager module for the main, moon, and
dawn palettes.

## Usage

Add the flake to your inputs.

```nix
inputs = {
  rosepine.url = "github:nebunebu/rosepine-flake";
};
```

Example use in the context of the home-manager module
system,

```nix
{
  inputs,
  config,
  ...
}:
{
  imports = [ inputs.rosepine.homeManagerModule.rosePine ];

  wayland.windowManager.hyprland.settings.general = {
    "col.active_border" = "rgb(${config.rosePine.main.iris})";
  };
}
```

And example use in the context of the nixos-modules system,

```nix
{
  inputs,
  config,
  ...
}:
{
  imports = [
    inputs.sddm-sugar-candy-nix.nixosModules.default
    inputs.rosepine.nixosModules.rosePine

  ];

  services.displayManager.sddm.sugarCandyNix = {
    MainColor = "#${config.rosePine.main.text}";
    AccentColor = "#${config.rosePine.main.gold}";
    BackgroundColor = "#${config.rosePine.main.base}";
  };
}
```
