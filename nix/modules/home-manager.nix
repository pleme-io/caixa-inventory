# nix/modules/home-manager.nix — auto-generated from inventory.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.inventory; in {
  options.programs.inventory = {
    enable = lib.mkEnableOption "inventory";
    package = lib.mkOption { type = lib.types.package; default = pkgs.inventory or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
