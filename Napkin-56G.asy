if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56G";
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

import graph;
pair a=1, b=I;
a+=3*b;
b+=2*a;
//write(a, b, a+b);
filldraw(origin--a--a+b--b--cycle, orange, orange*0.2);
dot("$\alpha_1$", a, blue);
dot("$\alpha_2$", b, blue, align=dir(135));
graph.xaxis(xmin=-11, xmax=11);
graph.yaxis(ymin=-11, ymax=11);
