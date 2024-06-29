if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86I";
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

draw( (-4,0)--(4,0), blue, Arrows);
draw( (0,-4)--(0,4), blue, Arrows);
dot("$(x)$", (0.3,3), dir(-45), lightred);
dot("$(y)$", (3, 0.3), dir(135), lightred);
draw( (0.3,3.6)--(0.3,2.4), lightred+dotted );
draw( (2.4,0.3)--(3.6,0.3), lightred+dotted );
dot("$(x+2)$", (-2,0), dir(-90), blue);
dot("$(y+3)$", (0,-3), dir(0), blue);
