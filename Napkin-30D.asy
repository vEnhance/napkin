if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-30D";
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

size(9cm);
import graph;
graph.xaxis("$x$");
graph.yaxis("$y$");
real f(real x) { return x*x/2+0.4; }
pair P(real x) { return (x, f(x)); }
draw(graph(f,-2,2,operator ..), blue, Arrows(TeXHead));
label("$f$", (2, f(2)), dir(-45), blue);
for (real i=-1.3; i<=2; ++i) {
if (i < 1) { draw(P(i)--P(i+1), deepgreen, EndArrow(TeXHead), Margins); }
dot(P(i), deepgreen);
}
real m1 = f(-0.3) - f(-1.3);
real m2 = f(0.7) - f(-0.3);
real m3 = f(1.7) - f(0.7);
real r = 0.4;
void draw_tangent(real m) {
dot(P(m), red);
draw((m-r, f(m)-r*m)--(m+r, f(m)+r*m), red);
}
draw_tangent(m1);
draw_tangent(m2);
draw_tangent(m3);
draw(P(-1.3)--(-1.3,0), deepgreen+dashed);
draw(P(-0.3)--(-0.3,0), deepgreen+dashed);
draw(P( 0.7)--( 0.7,0), deepgreen+dashed);
draw(P( 1.7)--( 1.7,0), deepgreen+dashed);
label("$t_0$", (-1.3,0), dir(-90), deepgreen);
label("$t_1$", (-0.3,0), dir(-90), deepgreen);
label("$t_2$", ( 0.7,0), dir(-90), deepgreen);
label("$t_3$", ( 1.7,0), dir(-90), deepgreen);
draw(P(m1)--(m1,0), red+dashed);
draw(P(m2)--(m2,0), red+dashed);
draw(P(m3)--(m3,0), red+dashed);
label("$\xi_1$", (m1,0), dir(-90), red+fontsize(8pt));
label("$\xi_2$", (m2,0), dir(-90), red+fontsize(8pt));
label("$\xi_3$", (m3,0), dir(-90), red+fontsize(8pt));
draw(P(-1.3)--P(1.7), blue+dashed, EndArrow, Margins);
label("Net change", 0.3*P(-1.3)+0.7*P(1.7), dir(90), blue);
