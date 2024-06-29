if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-2B";
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

size(1.5cm);
draw(unitcircle);
pair A = (1.4, 1.4);
pair B = rotate(90)*A;
pair C = rotate(90)*B;
pair D = rotate(90)*C;
draw(A--B--C--D--cycle);
dot(origin);
pair P = Drawing(dir(70));
pair Q = Drawing(extension(origin, P, A, B));
draw(origin--Q, dashed);
