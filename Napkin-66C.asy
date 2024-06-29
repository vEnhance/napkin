if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-66C";
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

size(6cm);

real[] t = {-1,0,1,2};
xaxis(-2,3, graph.LeftTicks(Ticks=t), Arrows);
MP("\mathbb R", (2.5,0), dir(90));
path gt = (0,0.3)--(1,0.3);
draw(gt, blue, EndArrow);
label("$\tilde\gamma$", midpoint(gt), dir(90), blue);
add(shift( (0,3) ) * CC());

path darrow = (0,2.5)--(0,1.5);
MP("p", midpoint(darrow), dir(0));
draw(darrow, EndArrow);

real r = 1.2;
draw(scale(r)*unitcircle);
MP("S^1", r*dir(45), dir(45));
dot("$1$", r*dir(0), dir(0));
path g = dir(20)..dir(100)..dir(180)..dir(260)..dir(340);
draw(g, red, EndArrow);
label("$\gamma$", midpoint(g), -dir(midpoint(g)), red);

MP("p(0) = 1", (2.5,0.5));
MP("p(1) = 1", (2.5,0));
