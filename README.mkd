# Napkin v1.5

![Last commit](https://img.shields.io/github/last-commit/vEnhance/napkin)
![Forks](https://img.shields.io/github/forks/vEnhance/napkin)
![Stars](https://img.shields.io/github/stars/vEnhance/napkin)

These are the source files for Evan Chen's _An Infinitely Large Napkin_.
You can read about the project on my [webpage](https://web.evanchen.cc/napkin.html).

### Download

You can download the [_most recent PDF_](https://venhance.github.io/napkin/Napkin.pdf)
or [generated log files](https://venhance.github.io/napkin/).
(Thanks to [aDotInTheVoid](https://github.com/aDotInTheVoid)
for helping me set up the Travis CI to automate this process!)

### Code

The project can be compiled on a system supporting `latexmk` and `asymptote`,
with a sufficiently recent version of TeX Live.
You'll need to `mkdir asy`, then simply run `latexmk`.
On a system with nix, just run `nix build`.
(Or, see `.travis.yml` for the instructions that Travis CI uses to compile.)

_Pull requests are welcome!_
You can email corrections directly to me as well.

### Coffee

If you like this project and want to support me,
you can consider [buying me a coffee](https://ko-fi.com/evanchen).
