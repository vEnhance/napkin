if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-73C";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import extras;
size(6cm);
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(11pt));
settings.tex = "latex";
settings.outformat = "pdf";

usepackage("xcolor");
draw((0, 0)--(0, 1), L=Label("$(X, {\color{red} A})$", EndPoint));
dot((0, 0), red);
dot((0, 1), red);

draw((0.2, 0.5)--(0.8, 0.5), Arrow, L="$q$");
fill(shift(1, 0)*unitsquare, yellow+opacity(0.1));
draw((1, 0)--(2, 0), red);
draw((1, 1)--(2, 1), red);
label("$(Y, {\color{red} B})$", (2, 1), align=N);

draw((1.1, 0)--(1.3, 1), heavygreen, L=Label("$f(X)$"));
dot((1.1, 0), red);
dot((1.3, 1), red);

draw((1.75, 0)--(1.5, 1), blue, L=Label("$g(X)$", Relative(0.8)));
dot((1.75, 0), red);
dot((1.5, 1), red);
