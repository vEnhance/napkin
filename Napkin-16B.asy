if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-16B";
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
draw(ellipse(origin, 0.5, 2));
label("$\mathcal O \subseteq X$", (0,2), dir(90));
for (real i=-1.5; i<=1.5; ++i) {
dot( (0,i) );
}
draw( (0.3,1.8)--(0.3,1.2)--(4,1.2)--(4,1.8)--cycle );
label("$S \subseteq G$", (4,1.5), dir(0));
for (real i=0.7; i < 4; i+=0.7) {
label("$\circ$", (i, 1.5), origin);
}
draw( (-0.2,1.5)..(-1,0.5)..(-0.2,-0.5), EndArrow);
label("$g$", (-1,0.5), dir(180));
