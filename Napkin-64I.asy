if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64I";
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
fill(unitcircle, yellow+opacity(0.2));
defaultpen(linewidth(1));
draw(arc(origin, 1, 45, 135), blue, MidArrow);
draw(arc(origin, 1, 315, 225), blue, MidArrow);
draw(arc(origin, 1, 135, 225), red, MidArrow);
draw(arc(origin, 1, 45, -45), red, MidArrow);
label("$e^2$", origin, origin);
