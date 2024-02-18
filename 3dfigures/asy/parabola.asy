import three;
import graph3;
size(6cm);
currentprojection=orthographic((2, -3, 1), up=Z);
draw((-2, 0, 0)--(2, 0, 0), Arrow3, L=Label("$\operatorname{Re} z$", EndPoint));
draw((0, -2, 0)--(0, 2, 0), Arrow3, L=Label("$\operatorname{Im} z$", EndPoint));
draw((0, 0, 0)--(0, 0, 2), Arrow3, L=Label("$|w|$", EndPoint));
draw(surface(new real(pair z){ return abs(z^2); }, (-1, -1), (1, 1), nx=5, Spline),
lightgray, meshpen=black, nolight);
