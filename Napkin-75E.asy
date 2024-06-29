if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-75E";
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

size(0); unitsize(2cm);
fill(unitsquare, yellow+opacity(0.2));
pair C = (0,0);
pair B = (1,0);
pair A = (1,1);
pair D = (0,1);
draw(A--B, red, MidArrow);
draw(C--B, blue, MidArrow);
draw(D--C, red, MidArrow, L=Label("$f = {}$", black));
draw(A--D, blue, MidArrow);
draw(A--C);
label("$1$", (A+B+C)/3);
label("$2$", (A+D+C)/3);
