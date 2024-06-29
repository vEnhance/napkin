if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86C";
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

size(8cm);
pair A = (-8,0); pair B = (8,0);
draw(A--B, blue, Arrows);
dot("$(7)$", (0,0), dir(-90), blue);
dot("$(3)$", (3,0), dir(-90), blue);
dot("$(19)$", (-4,0), dir(-90), blue);
dot("$(0)$", (0,1), dir(90), red);
draw( (-6,0)..(-3,0.5)..(-1,1)--(1,1)--(3,0.5)--(6,0), dotted+red );
label("$\operatorname{Spec} \mathbb Z$", A, dir(-90), blue);
