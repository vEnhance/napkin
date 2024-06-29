if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64H";
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

unitsize(1cm);
draw(shift(-1,0)*unitcircle, blue, MidArrow);
draw(shift(1,0)*rotate(180)*unitcircle, red, MidArrow);
label("$e^1_a$", 2*dir(180), dir(180), blue);
label("$e^1_b$", 2*dir(0), dir(0), red);
dotfactor *= 1.4;
dot("$e^0$", origin, dir(0));
