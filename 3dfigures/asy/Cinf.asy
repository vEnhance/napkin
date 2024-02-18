import three;
currentprojection=orthographic((2, -3, 1), up=Z);

draw((-2, 0, 0)--(2, 0, 0), blue, Arrow3, L=Label("$\operatorname{Re} z$", EndPoint));
draw((0, -2, 0)--(0, 2, 0), Arrow3, L=Label("$\operatorname{Im} z$", EndPoint));
draw((-2, 0, 1)--(2, 0, 1), Arrow3, L=Label("$\operatorname{Re} t$", EndPoint));
draw((0, 2, 1)--(0, -2, 1), Arrow3, L=Label("$\operatorname{Im} t$", EndPoint, align=W));
draw(shift(0, 0, 0.5)*scale3(0.5)*unitsphere, opacity(0.3)+lightcyan);

draw(shift(0, 0, 0.5)*rotate(90, X)*scale3(0.5)*path3(unitcircle), blue);
