if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-76B";
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

size(3cm);
fill(scale(2)*unitsquare, orange+opacity(0.2));
draw((0, 0)--(0, 2), blue, MidArrow);
draw((2, 2)--(2, 0), blue, MidArrow);
draw((0, 0)--(2, 0), red, MidArrow);
draw((2, 2)--(0, 2), red, MidArrow);
label("$a$", (0, 2), NW);
label("$b$", (2, 2), NE);
label("$c$", (0, 0), SW);
label("$d$", (2, 0), SE);
draw((0.5, 0)--(0.5, 2), Arrow);
