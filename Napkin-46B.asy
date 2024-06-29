if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-46B";
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
draw(unitcircle, black);
draw(arc(origin, 1, 80, 100), heavygreen+2);
draw(arc(origin, 1, -100, -80), heavygreen+2);
label("$S^1$", dir(45), dir(45));
real R = 0.1;
draw(arc(origin,1-R,-100,100), red);
label("$U_2$", (1-R)*dir(0), dir(180), red);
draw(arc(origin,1+R,80,280), blue);
label("$U_1$", (1+R)*dir(180), dir(180), blue);
dotfactor *= 2;
pair A = opendot( (-3, -2), blue );
pair B = opendot( (-1, -2), blue );
label("$E_1$", midpoint(A--B), dir(-90), blue);
draw(A--B, blue, Margins);
draw( (-1.25, -0.2)--(-2,-2), blue, EndArrow, Margins );
label("$\phi_1$", (-1.675, -1.1), dir(180), blue);

pair C = opendot( (1, -2), red );
pair D = opendot( (3, -2), red );
label("$E_2$", midpoint(C--D), dir(-90), red);
draw(C--D, red, Margins);
draw( (1.25, -0.2)--(2,-2), red, EndArrow, Margins );
label("$\phi_2$", (1.672, -1.1), dir(0), red);

draw(A--(0.7*A+0.3*B), heavygreen+2, Margins);
draw(B--(0.7*B+0.3*A), heavygreen+2, Margins);
draw(C--(0.7*C+0.3*D), heavygreen+2, Margins);
draw(D--(0.7*D+0.3*C), heavygreen+2, Margins);
draw(B--C, heavygreen, EndArrow, Margin(4,4));
label("$\phi_{12}$", B--C, dir(90), heavygreen);
