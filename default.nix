{ pkgs ? import <nixpkgs> { } }:

{
  # 功能
  lib = import ./lib { inherit pkgs; };
  # 模块
  modules = import ./modules;
  # Overlays
  overlays = import ./overlays;

  hmcl_stable = pkgs.callPackage ./pkgs/hmcl_stable { };
}
