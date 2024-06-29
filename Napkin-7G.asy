if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7G";
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

size(9cm);
bigbox("$\mathbb C$");
pair A = Drawing("p", (-3,0), dir(180));
pair B = Drawing("q", (3,0), dir(0));
draw(A..MP("F_{0} = \alpha", (0,2), dir(45))..B, heavygreen);
draw(A..MP("F_{0.25}", (0,1), dir(45))..B, mediumgreen);
draw(A..MP("F_{0.5}", (0,0), dir(90))..B, palecyan);
draw(A..MP("F_{0.75}", (0,-1), dir(-45))..B, mediumcyan);
draw(A..MP("F_{1} = \beta", (0,-2), dir(-45))..B, heavycyan);
// draw(A..(1.5,-2)..(-1.5,-2)..B, orange, EndArrow);
