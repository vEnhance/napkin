if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64G";
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

size(2cm);
fill(unitsquare, yellow+opacity(0.2));
pair C = (0,0);
pair B = (1,0);
pair A = (1,1);
pair D = (0,1);
draw(A--B, red, MidArrow);
draw(B--C, blue, MidArrow);
draw(D--C, red, MidArrow);
draw(A--D, blue, MidArrow);
