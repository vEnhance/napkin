if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7D";
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
pair A = Drawing("\gamma(0)", (-3,-1));
pair B = Drawing("\gamma(1)", (2,1), dir(90));
path p = A..(-2,0)..(0,2)..(1,0)..B;
draw(p, EndArrow);
MP("\gamma", midpoint(p), dir(90));
