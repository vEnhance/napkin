if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-2E";
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

size(12cm);
bigblob("$N$");
pair Y = Drawing("y", origin, dir(75));
real eps = 1.5;
draw(CR(Y, eps), dotted);
label("$\varepsilon$", Drawing(Y--(Y+eps*dir(255))));
label("$V$",
Drawing(shift(-0.5,0)*rotate(190)*scale(3.2,2.8)*unitcircle, dashed));
add(shift( (13,0) ) * CC());
label("$f$", Drawing( (4.5,0)--(8,0), EndArrow));

bigblob("$M$");
real delta = 1.1;
pair X = Drawing("x", (-1.5,-0.5), dir(-45));
label("$\delta$", Drawing(X--(X+delta*dir(155))));
draw(CR(X, delta), dotted);
label("$U = f^{\text{pre}}(V)$",
Drawing(shift(-1.5,-0.3)*rotate(235)*scale(2.4,1.8)*unitcircle, dashed));
