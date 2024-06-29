if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-82B";
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

filldraw(ellipse( (0,0), 8, 1.5 ), opacity(0.2)+lightblue, black );
label("$X$", (8,-1.5));
filldraw(ellipse( (-1,0), 5, 1 ), opacity(0.2)+lightcyan, heavycyan);
label("$U$", (4,-1), dir(45), heavycyan);
path curve = (-6,3)..(-4,5)..(-2,8)..(-1,7)..(0,5)..(2,7)..(4,9);
draw(curve, red);
draw(subpath(curve, 1, 5), deepgreen+1.5); // from x=-4 to x=2
filldraw(ellipse( (-1,0), 3, 0.8 ), opacity(0.2)+deepgreen, deepgreen);
label("$V$", (2,-0.8), dir(45), deepgreen);
label("$\operatorname{res} s \in \mathcal F(V)$", (-2,8), dir(90), deepgreen);
draw( (-4,5)..(-4,0), dashed+deepgreen);
draw( (2,7)..(2,0), dashed+deepgreen);
draw( (-6,3)..(-6,0), dashed+red );
draw( (4,9)..(4,0), dashed+red );
