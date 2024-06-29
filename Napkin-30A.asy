if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-30A";
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

import graph;
graph.xaxis();
graph.yaxis();
label("$a=t_0$", (-3,0), dir(-90), red);
label("$b=t_4$", ( 3,0), dir(-90), red);
pen b = blue + 1.2;
draw( (-3,3)--(-1.2,3), b );
draw( (-1.2,1)--(0.8,1), b );
draw( (0.8,4)--(2,4), b );
draw( (2,2.5)--(3,2.5), b );

draw( (-3,3)--(-3,0), red );
draw( (-1.2,3)--(-1.2,0), dotted+heavycyan );
draw( (0.8,4)--(0.8,0), dotted+heavycyan );
draw( (2,4)--(2,0), dotted+heavycyan );
draw( (3,2.5)--(3,0), red );
label("$t_1$", (-1.2,0), dir(-90), heavycyan);
label("$t_2$", (0.8,0), dir(-90), heavycyan);
label("$t_3$", (2,0), dir(-90), heavycyan);

dotfactor *= 2;
dot( (-3,3), blue ); // x = a
opendot( (-1.2, 3), blue );
opendot( (0.8, 1), blue );
opendot( (2, 4), blue );
dot( (-1.2,1), blue );
dot( (0.8,4), blue );
dot( (2,2.5), blue );
dot( (3, 2.5), blue ); // x = b
