if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64N";
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
filldraw(unitcircle, lightblue+opacity(0.2), heavyblue+opacity(0.4));
label("$S^1$", dir(225), dir(225), lightblue);
dot("$\vec 0$", origin, dir(45));
pair X1 = (-2.1,1);
pair X2 = (1.9,1);
draw(X1--X2, heavyred, Arrows);
dot("$0$", (0,1), dir(90), heavyred);
dot("$1$", (1,1), dir(90), heavyred);
pair P = extension( (0,1), (1,1), dir(250), dir(70) );
dot("$0.36$", P, dir(90), heavyred);
label("$\mathbb R$", X2, dir(105), heavyred);

path L(pair A, pair B, real a=0.6, real b=a)
{ return (a*(A-B)+A)--(b*(B-A)+B); }
draw(L(dir(130),-dir(130),0.2,0.2), gray);
draw(L(dir(250),-dir(250),0.2,0.2), gray);
draw(L(dir(-20),-dir(-20),0.2,0.2), gray);
draw(L(dir(0), -dir(0), 0.4,0.4), heavycyan+1);
