if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-34B";
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

unitsize(0.8cm);
size(7cm);
cplane();
pair A = Drawing((1.5,0));
dot("$R$", A, dir(-45));
draw(A..(0,2.5)..MP("\alpha", (-1.5,2), dir(90))..(-1.2,-1.3)..(1,1.5)..(1.8,1.1)..A, red, EndArrow);
draw(A..(0.7,0.5)..MP("\beta", (0.6,0.3), dir(90))..A, blue, EndArrow);
