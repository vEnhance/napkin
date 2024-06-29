if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-76C";
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

draw(scale(0.5)*shift(1, 1)*unitcircle);
draw(shift(-1, 0)*unitsquare);
label("$=$", (1.25, 0.5));
draw(shift(1.5, 0)*unitsquare);
label("$\vee$", (2.75, 0.5));
draw(shift(3, 0)*scale(0.5)*shift(1, 1)*unitcircle);
