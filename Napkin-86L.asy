if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86L";
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

unitsize(0.7cm);
pair A = (-5,0); pair B = (5,0);
draw(A--B, blue, Arrows);
draw( (-4,0)..(-2,0.5)..(-1,1)--(1,1)--(2,0.5)--(4,0), dotted+red );
label("$\operatorname{Spec} k[x]$", A, dir(-90), blue);
draw( (0,0)--(0,3), heavygreen);
label("$\mathcal O_{\operatorname{Spec} k[x], (x)}$", (0,3), dir(90), heavygreen);
dot("$(x)$", (0,0), dir(-90), blue);
dot("$(0)$", (0.2,1), dir(45), red);
add(shift(-9,0)*CC());
draw("pluck", (-4.5, 1.5)--(-1.5,1.5), dir(90), black, EndArrow(TeXHead));
// now the stalk
draw( (0,0)--(0,3), heavygreen);
label("$\operatorname{Spec} k[x]_{(x)}$", (0,3), dir(90), blue);
draw( (-1,1)--(1,1), dotted+red );
dot("$(0)$", (0.2,1), dir(45), red);
dot("$(x)$", (0,0), dir(-90), blue);
