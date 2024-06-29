if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-72E";
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

pair A = (0,0);
pair B = (1,0);
pair C = (1,1);
pair D = (0,1);
fill(box((0.2,0),(0.8,1)), orange+opacity(0.2));
fill(box(A,(0.3,1)), heavygreen+opacity(0.2));
fill(box((0.7,0),C), heavygreen+opacity(0.2));

draw( (0.25,1)--(0.25,0), MidArrow, L=Label("$z_1$", align=E*2.5, Relative(0.67)));
draw( (0.5,1)--(0.5,0), MidArrow, L=Label("$\alpha_U$", align=E, Relative(0.67)));
draw( (0.72,1)--(0.72,0), MidArrow, L=Label("$z_2$", align=E, Relative(0.67)));
draw( (0.88,1)--(0.88,0), MidArrow, L=Label("$\alpha_V$", align=E, Relative(0.67)));

draw( (0.3,0)--(0.3,1), heavygreen+dashed+1.2);
draw( (0.7,0)--(0.7,1), heavygreen+dashed+1.2);
draw( (0.2,0)--(0.2,1), orange+dashed+1.2);
draw( (0.8,0)--(0.8,1), orange+dashed+1.2);

draw(A--B, red+1.5, MidArrow);
draw(B--C, blue+1.5, MidArrow);
draw(D--C, red+1.5, MidArrow);
draw(A--D, blue+1.5, MidArrow);
