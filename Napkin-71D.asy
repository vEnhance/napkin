if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-71D";
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

size(14cm);
bigblob("$Y$");
pair A = (-3.5,2);
pair B = (-2.2,-2);
pair C = (2.2,1.6);
pair D = (2.0, -1.1);

pen rr = red;
dot("$v_0$", A, dir(90), rr); dot("$v_1$", B, dir(-090), rr);
path v = A..(-2,0)..B;
draw(v, rr, EndArrow);
label("$f(\sigma)$", v, dir(180), rr);

pen hg = heavygreen;
dot("$w_0$", C, dir(90), hg); dot("$w_1$", D, dir(-90), hg);
path w = C..(2.3,0)..D;
draw(w, hg, EndArrow);
label("$g(\sigma)$", w, dir(0), hg);

pen gr = grey + dashed;
draw(A--C, gr, Margins);
path F = A--D;
draw(F, gr, Margins);
label("$F$", F, dir(90), gr);
draw(B--D, gr, Margins);

add(shift(12.5,0)*CC());
pair W = 1.5*dir(135);
pair X = 1.5*dir(225);
pair Y = 1.5*dir(45);
pair Z = 1.5*dir(-45);
dot("$v_0$", W, dir(W), rr);
dot("$v_1$", X, dir(X), rr);
dot("$w_0$", Y, dir(Y), hg);
dot("$w_1$", Z, dir(Z), hg);

label("$\Delta^1 \times [0,1]$", 2*dir(90), dir(90));
pair A1 = (1.5,0);
pair A2 = (3.5,0);
pair A3 = (6.25,0);
pair A4 = (7.5,0);
draw(A1--A2, EndArrow);
draw(A3--A4, EndArrow);
label("$\boxed{X \times [0,1]}$", midpoint(A2--A3), blue);
label("$F$", A3--A4, dir(90));
label("$\sigma \times \operatorname{id}$", A1--A2, dir(90));

draw(W--X, rr, EndArrow);
draw(Y--Z, hg, EndArrow);
draw(W--Y, gr);
draw(X--Z, gr);
draw(W--Z, gr);
