# nix/modules/darwin.nix — auto-generated from inventory.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.inventory; in {
  options.services.inventory = {
    enable = lib.mkEnableOption "inventory";
    package = lib.mkOption { type = lib.types.package; default = pkgs.inventory or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
