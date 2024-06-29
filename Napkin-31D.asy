if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31D";
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

pair A = Drawing("-1", dir(180), dir(-90));
pair B = Drawing("1", dir(0), dir(-90));
draw(arc(origin, 1, 180, 0), red, EndArrow);
MP("\alpha", dir(90), dir(90));
draw(A--B, blue, EndArrow);
MP("\beta", 0, dir(-90));
