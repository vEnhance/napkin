{
  description = "An Infinitely Large Napkin";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib;
    eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        tex = (pkgs.texlive.combine {
          inherit (pkgs.texlive)
          scheme-medium
          asymptote wrapfig amsmath ulem hyperref capt-of
          latexmk biber xpatch
          tkz-graph tikz-cd xcolor todonotes
          mdframed mathtools braket
          multirow prerex cleveref
          wasysym stmaryrd
          microtype relsize
          answers etoolbox minitoc thmtools zref needspace
          biblatex xypic;
        });
      in {
        formatter = nixpkgs.legacyPackages."${system}".nixfmt;
        defaultPackage = pkgs.stdenv.mkDerivation {
          name = "napkin";
          version = "1.5";
          src = ./.;
          buildInputs = with pkgs; [tex ghostscript asymptote biber];
          buildPhase = ''
            mkdir asy
            latexmk -f
          '';
          installPhase = ''
            mkdir -p $out
            cp Napkin.pdf $out/
          '';
        };
      });
}
