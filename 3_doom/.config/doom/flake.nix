{
  description = "Universal dev shell for Doom Emacs and all languages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          emacsNativeComp
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
          python312Packages.cmake
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
      };

      # 👇 merge both into one attrset
      packages.${system} = {
        emacs = pkgs.writeShellScriptBin "emacs" ''
          exec ${pkgs.emacsNativeComp}/bin/emacs "$@"
        '';

        doom = pkgs.writeShellScriptBin "doom" ''
          exec ~/.emacs.d/bin/doom "$@"
        '';
      };
    };
}
