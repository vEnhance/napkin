if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-82E";
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
draw( (-6,3)..(-6,0), dashed+red );
draw( (4,9)..(4,0), dashed+red );

draw( (-4,0)--(-4,13), heavygreen);
dot((-4,5), heavygreen+6);
dot((-4,0), blue);

draw( (-2,0)--(-2,12), heavygreen);
dot((-2,8), heavygreen+6);
dot((-2,0), blue);

draw( (-1,0)--(-1,11), heavygreen);
dot((-1,7), heavygreen+6);
dot((-1,0), blue);

draw( (0,0)--(0,12), heavygreen);
dot((0,5), heavygreen+6);
dot((0,0), blue);

draw( (2,0)--(2,11), heavygreen);
dot((2,7), heavygreen+6);
dot((2,0), blue);
