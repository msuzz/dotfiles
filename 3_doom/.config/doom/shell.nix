{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
      emacs28NativeComp
      ripgrep
      fd
      fantasque-sans-mono
      crimson
      stdenv
      gcc
      ccls
      cmake
      clang
      nodejs
      jdt-language-server
      java-language-server
      python311
      python311Packages.pip
      python311Packages.virtualenv
      python311Packages.python-lsp-server
      unzip
      shellcheck
      multimarkdown
      html-tidy
    ];
}
