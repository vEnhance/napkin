if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-62C";
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
pen tg = heavyred; // "times g"

pen pointpen = lightblue;
pair A = Drawing("g_1H", dir(80), dir(80), pointpen);
pair B = Drawing("g_2H", A*dir(120), A*dir(120), pointpen);
pair C = Drawing("g_3H", A*dir(240), A*dir(240), pointpen);
draw(A--B, dashed + pointpen, EndArrow, Margin(2,2));
draw(B--C, dashed + pointpen, EndArrow, Margin(2,2));
draw(C--A, dashed + pointpen, EndArrow, Margin(2,2));
label("$\times g$", midpoint(A--B), A+B, tg);
label("$\times g$", midpoint(B--C), B+C, tg);
label("$\times g$", midpoint(C--A), C+A, tg);
label("$3$", origin, origin, pointpen);
add(shift( (-3.2,0.1) ) * CC());

label("$g = \operatorname{Frob}_{\mathfrak P}$", (-1.7,1.7), origin, tg);

pointpen = heavygreen;
pair W = Drawing("g_4H", dir(50), dir(50), pointpen);
pair X = Drawing("g_5H", W*dir(90), W*dir(90), pointpen);
pair Y = Drawing("g_6H", W*dir(180), W*dir(180), pointpen);
pair Z = Drawing("g_7H", W*dir(270), W*dir(270), pointpen);
draw(W--X, dashed + pointpen, EndArrow, Margin(2,2));
draw(X--Y, dashed + pointpen, EndArrow, Margin(2,2));
draw(Y--Z, dashed + pointpen, EndArrow, Margin(2,2));
draw(Z--W, dashed + pointpen, EndArrow, Margin(2,2));
defaultpen(red);
label("$\times g$", W--X, W+X, tg);
label("$\times g$", X--Y, X+Y, tg);
label("$\times g$", Y--Z, Y+Z, tg);
label("$\times g$", Z--W, Z+W, tg);
label("$4$", origin, origin, pointpen);

label("$\boxed{n = 7 = 3+4}$", (-2,-1.8), origin, black);
