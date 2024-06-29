if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-66A";
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

var flatten = yscale(0.4);
guide g;
for (real a=90+360*5; a>=90; a-=20){
g = g .. flatten*dir(a)+(0, a/360/3);
}
draw(g, Arrows);
draw((0, -0.4)--(0, -1.4), Arrow, L=Label("$p$"));
draw(shift(0, -2)*flatten*unitcircle, L=Label("$S^1$", Relative(0.1)));
