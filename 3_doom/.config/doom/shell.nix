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
      nodePackages.js-beautify
      jdt-language-server
      java-language-server
      python311
      python311Packages.pip
      python311Packages.virtualenv
      python311Packages.python-lsp-server
      python311Packages.nose
      python311Packages.pytest
      unzip
      shellcheck
      multimarkdown
      html-tidy
      sbcl
      fpm
      gfortran
      php83
      php83Packages.composer
      isort
      pipenv
      stylelint
      glslang
    ];
}
