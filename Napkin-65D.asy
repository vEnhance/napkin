if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65D";
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
bigbox("$\mathbb C \setminus \{0\}$");
filldraw(scale(0.5)*unitcircle, grey, black);
dot("$x_0$", (1.4,0), dir(0));
draw( (1.4,0)..(0,1.4)..(-1.4,0)..(1.4*dir(-30))..cycle, blue, EndArrow );
