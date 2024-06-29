if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56B";
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
real T = 1.414;
int N = 10;
real M = 5;
for (int a = -N; a <= N; ++a) {
for (int b = -N; b <= N; ++b) {
if ((abs(a+T*b) <= M) && (abs(a-T*b) <= M))
dot( (a+T*b, a-T*b) );
}
}
draw( (-M,0)--(M,0), dotted);
draw( (0,-M)--(0,M), dotted);
label("$-2$", (-2,-2), dir(135));
label("$-1$", (-1,-1), dir(135));
label("$0$", (0,0), dir(135));
label("$1$", (1,1), dir(135));
label("$2$", (2,2), dir(135));
label("$-\sqrt 2$", (-T,T), dir(135));
label("$\sqrt 2$", (T,-T), dir(-45));
label("$1+\sqrt 2$", (1+T,1-T), dir(-45));

filldraw((0,0)--(1,1)--(1+T,1-T)--(T,-T)--cycle, heavycyan, blue);
