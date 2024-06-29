if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7E";
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
bigbox("$\mathbb C$");
pair A = Drawing("p", (-3,0), dir(180));
pair B = Drawing("q", (3,0), dir(0));
draw(A..(-2,0.5)..(0,2)..(1,1.2)..B, red, EndArrow(TeXHead));
draw(A--B, mediumgreen, EndArrow(TeXHead));
draw(A--(-1,-1)--(2,-1)--B, blue, EndArrow(TeXHead));
// draw(A..(1.5,-2)..(-1.5,-2)..B, orange, EndArrow(TeXHead));
