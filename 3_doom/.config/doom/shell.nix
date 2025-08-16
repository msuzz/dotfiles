{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
      emacs
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
      nodePackages.js-beautify
      jdt-language-server
      java-language-server
      python312
      python312Packages.pip
      python312Packages.virtualenv
      #python312Packages.python-lsp-server
      #python312Packages.pytest
      python312Packages.cmake
      unzip
      shellcheck
      multimarkdown
      html-tidy
      sbcl
      fpm
      gfortran
      php
      phpPackages.composer
      isort
      pipenv
      stylelint
      glslang
    ];
}
