if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65C";
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

bigblob("$X$");
pair A = Drawing("x_0", (-1,0), dir(100));
path p = A..(1,1)..(2,0)..(0.5,-1)..(-1.5,-0.5)..cycle;
draw(p, blue, EndArrow);
MP("\gamma", midpoint(p), dir(-20));
