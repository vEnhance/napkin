if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31A";
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

size(7cm);
dot("$0$", origin, dir(225));
void meow(string s, real theta, real eps = 45, pen p) {
draw( (dir(theta) * 0.8) -- (dir(theta) * 0.2), p+1);
draw( (dir(theta) * 0.8) -- (dir(theta) * 0.2), p, Arrow);
label(s, dir(theta)*0.5, dir(eps), p);
}
meow("$1$", 0, 90, blue);
meow("$1$", 180, 90, blue);
meow("$i$", -45, 45, heavygreen);
meow("$-1$", 90, 0, red);
label("$f(z) = \overline z$", dir(135));
label("$\dfrac{f(0+h)-f(0)}{h}$", dir(135)-0.35*dir(90));

import graph;
graph.xaxis("Re", -1, 1, grey, NoTicks, Arrows);
graph.yaxis("Im", -1, 1, grey, NoTicks, Arrows);
