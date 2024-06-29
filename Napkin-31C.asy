if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31C";
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

unitsize(0.8cm);
bigbox("$\Omega$");
pair A = Drawing((-3,0));
pair B = Drawing((3,0));
draw(A..(-2,0.5)..MP("\alpha", (0,2), dir(90))..(1,1.2)..B, red, EndArrow);
draw(A----MP("\beta", (A+B)/2, dir(-90))--B, blue, EndArrow);
