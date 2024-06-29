if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-8B";
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

size(12cm);
path blob = (-8,3)..(-10,1)..(-9.4,0)..(-8.2,-3)..(-8,-4)
..(-2,-4.3)..(2,-4.2)..(8,-4)
..(8.6,-2)..(8.2,0.5)..(8,3)
..(4,3.3)..(0,3.1)..(-6,2.9)..cycle;
void open_ball(pair O, real r, pen p) {
dot(O, p);
filldraw(CR(O, r), p+opacity(0.1), p+dashed);
}

filldraw(blob, cyan+opacity(0.2), blue+0.7);
open_ball((-7,0.8), 3.5, red);
open_ball((-4.7,-1.2), 4.6, orange);
open_ball((-1.7,-0.3), 3.9, red);
open_ball((1.4,0.9), 2.9, yellow);
open_ball((2.5,-0.9), 3.7, orange);
open_ball((0.4,-3.7), 1.3, yellow);
open_ball((4.3,0.8), 2.7, red);
open_ball((6.3,1.8), 2.4, orange);
open_ball((6.0,-2.4), 4.0, yellow);

label("$X$", (8,3), dir(5), blue);

label(scale(2)*"$X = \bigcup_\alpha U_\alpha$", (0,4), blue);
