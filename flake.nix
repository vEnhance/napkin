{
  description = "An Infinitely Large Napkin";
  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    with flake-utils.lib;
      eachDefaultSystem (
        system: let
          pkgs = import nixpkgs {inherit system;};
          tex = pkgs.texlive.combine {
            inherit
              (pkgs.texlive)
              amsmath
              answers
              asymptote
              biber
              biblatex
              braket
              capt-of
              cleveref
              etoolbox
              hyperref
              latexmk
              mathtools
              mdframed
              microtype
              minitoc
              multirow
              needspace
              pdfcol
              prerex
              relsize
              scheme-medium
              stmaryrd
              tcolorbox
              thmtools
              tikz-cd
              tikzfill
              tkz-graph
              todonotes
              ulem
              wasysym
              wrapfig
              xcolor
              xpatch
              xypic
              zref
              ;
          };
          src = builtins.path {
            path = ./.;
            name = "napkin";
          };
        in {
          formatter = nixpkgs.legacyPackages.${system}.alejandra;
          defaultPackage = pkgs.stdenv.mkDerivation {
            inherit src;
            name = "napkin";
            version = "1.6";
            buildInputs = with pkgs; [
              asymptote
              biber
              ghostscript
              tex
            ];
            buildPhase = ''
              mkdir -p asy
              latexmk -f
            '';
            installPhase = ''
              mkdir -p $out
              cp Napkin.pdf $out/
            '';
          };
        }
      );
}
