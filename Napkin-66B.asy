if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-66B";
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

real[] t = {-2,-1,0,1,2};
xaxis(-3.5,3.5, graph.LeftTicks(Ticks=t), Arrows);

pen bloo = blue+1.5;

dotfactor *= 2;
pair A,B;
for (real x = -2; x <= 2; ++x) {
A = (x-0.2, 0); B = (x+0.2, 0);
draw(A--B, bloo); opendot(A, blue); opendot(B, blue);
}
MP("\mathbb R", (3,0), dir(90));

add(shift( (0,3) ) * CC());

path darrow = (0,2.5)--(0,1.5);
MP("p", midpoint(darrow), dir(0));
draw(darrow, EndArrow);

real r = 1.4;
draw(scale(r)*unitcircle);
MP("S^1", r*dir(45), dir(45));
A = r*dir(-20);
B = r*dir(20);
draw(arc(origin, A, B), bloo);
opendot(A, blue); opendot(B, blue);
dot("$1$", r*dir(0), dir(0));
