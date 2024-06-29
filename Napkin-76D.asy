if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-76D";
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

draw((0.5, 0)--(2.5, 0), L=Label("$X$", EndPoint, align=NE));
draw((0, 0.5)--(0, 2.5), L=Label("$Y$", EndPoint, align=NE));
draw((1, 0)--(2, 0), blue+1, L=Label("$U$", EndPoint, align=NE));
dot((1, 0), blue);
dot((2, 0), blue);
draw((0, 1)--(0, 2), blue+1, L=Label("$V$", EndPoint, align=NE));
dot((0, 1), blue);
dot((0, 2), blue);
filldraw(shift(1, 1)*unitsquare, blue+opacity(0.1), blue);
label("$U \times V$", (2, 2), blue, align=N);
draw(shift(0.5, 0.5)*scale(2)*unitsquare);
label("$X \times Y$", (2.5, 2.5), align=N);
