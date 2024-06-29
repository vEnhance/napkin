if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65F";
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

size(7cm);
bigblob("$X$");
pair A = Drawing("x_1", (-1.5,0), dir(180));
pair B = Drawing("x_2", (1.5,0), dir(0));
draw(A..(-2.5,-0.8)..(-2.5,0.9)..cycle, blue);
draw(B..(2.2,-1.1)..(2.4,0.8)..cycle, blue);
draw(A--B, red+dashed, Arrows);
label("$\alpha$/$\overline{\alpha}$", origin, dir(90));
