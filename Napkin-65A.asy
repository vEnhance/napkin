if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65A";
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

size(8cm);
bigblob("$X$");
pair A = Drawing("\gamma_1(0)", (-3,-1));
pair B = Drawing("\gamma_1(1) = \gamma_2(0)", (1,1), dir(90));
pair C = Drawing("\gamma_2(1)", (2,-2), dir(-90));
path p = A..(-2,0)..(0,0.5)..B;
path q = B..(1.8,-0.5)..C;
draw(p, red, EndArrow);
draw(q, blue, EndArrow);
MP("\gamma_1", midpoint(p), dir(90));
MP("\gamma_2", midpoint(q), dir(0));
