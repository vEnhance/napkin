if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-6A";
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

size(4cm);
draw(shift( (-0.5,-0.5) )*unitsquare, black+1);
real d = 0.4;
real r = 0.5;
draw(CR(dir( 45)*d, r), dotted);
draw(CR(dir(135)*d, r), dotted);
draw(CR(dir(225)*d, r), dotted);
draw(CR(dir(315)*d, r), dotted);
