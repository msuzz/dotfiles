{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [ pkgs.emacs28NativeComp pkgs.ripgrep pkgs.fd pkgs.fantasque-sans-mono pkgs.crimson pkgs.stdenv pkgs.gcc pkgs.ccls pkgs.cmake pkgs.unzip pkgs.shellcheck pkgs.multimarkdown pkgs.html-tidy];
}
