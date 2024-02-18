import three;
import graph;
import graph3;
size(6cm);
currentprojection=orthographic((2, -3, 1), up=Z);
draw((-4, 0, 0)--(4, 0, 0), Arrow3, L=Label("$\operatorname{Re} z$", EndPoint));
draw((0, -4, 0)--(0, 4, 0), Arrow3, L=Label("$\operatorname{Im} z$", EndPoint));
draw((0, 0, -4)--(0, 0, 4), Arrow3, L=Label("$\operatorname{Re} w$", EndPoint));
draw(surface(new real(pair z){ return (sqrt(1-z^2)).x; }, (-3, -3), (3, 3), nx=20, Spline),
lightcyan+opacity(0.3), meshpen=black, nolight);
draw(surface(new real(pair z){ return -(sqrt(1-z^2)).x; }, (-3, -3), (3, 3), nx=20, Spline),
lightcyan+opacity(0.3), meshpen=black, nolight);
draw(rotate(90, X)*path3(unitcircle), red+2);
path3 p=path3(graph.graph(new real(real x){ return sqrt(x^2+1); }, -3, 3));
draw(rotate(90, X)*rotate(90, Y)*p, blue+2);
draw(rotate(-90, X)*rotate(90, Y)*p, blue+2);
