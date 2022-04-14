{ config, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/installer/netboot/netboot-minimal.nix> ];
  console.font = "sun12x22";
  nixpkgs.config.allowUnfree = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.opengl.enable = true;
  environment.noXlibs = false;


}
