if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-61A";
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

size(6cm);
pair P = MP("p", (0,-2.8), dir(-90));
pair A = MP("\mathfrak p_1", 0.8*dir(210), origin);
pair B = MP("\mathfrak p_2", 0.5*dir(140), origin);
pair C = MP("\mathfrak p_3", dir(70), origin);
pair D = MP("\mathfrak p_4", 1.2*dir(-15), origin);
pair E = MP("\mathfrak p_5", 1.4*dir(15), origin);
pair F = MP("\mathfrak p_6", 1.5*dir(135), origin);
draw(dir(-90)--P);
draw(A--D, dashed, EndArrow, Margin(3,3));
label("$\sigma$", A--D, dir(-90));
