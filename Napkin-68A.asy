if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-68A";
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
dotfactor *= 1.4;

path sparrow(pair X, pair Y) {
// Short for "spaced arrow"
return (0.9*X+0.1*Y)--(0.1*X+0.9*Y);
}

pair A1 = Drawing("A_1", dir(210), dir(225));
pair A2 = Drawing("A_2", origin, dir(90));
pair A3 = Drawing("A_3", dir(-30), dir(-45));
path f = Drawing(sparrow(A2, A1), EndArrow);
label("$f$", f, dir(90));
path g = Drawing(sparrow(A2, A3), EndArrow);
label("$g$", g, dir(90));
label("$\mathcal A$", 0.6*(A1+A3));

pen p = blue;
transform FF = shift( (3.5, 0.7) );
dot("$F(A_1)$", FF*A1, dir(225), p);
dot("$F(A_2)$", FF*A2, dir(90), p);
dot("$F(A_3)$", FF*A3, dir(-45), p);
draw(FF*f, p, EndArrow);
draw(FF*g, p, EndArrow);
label("$F(f)$", FF*f, dir(110), p);
label("$F(g)$", FF*g, dir(70), p);
draw(FF*f, p+1.4);
draw(FF*g, p+1.4);

p = deepcyan;
transform GG = shift( (3.5, -0.7) );
dot("$G(A_1)$", GG*A1, dir(225), p);
dot("$G(A_2)$", GG*A2, 3*dir(-90), p);
dot("$G(A_3)$", GG*A3, dir(-45), p);
label("$G(f)$", Drawing(GG*f, p, EndArrow), dir(110), p);
label("$G(g)$", Drawing(GG*g, p, EndArrow), dir(70), p);
draw(GG*f, p+1.4);
draw(GG*g, p+1.4);

p = lightred;
label("$\alpha_{A_1}$", Drawing(sparrow(FF*A1, GG*A1), p, EndArrow), dir(180), p);
label("$\alpha_{A_2}$", Drawing(sparrow(FF*A2, GG*A2), p, EndArrow), dir(180), p);
label("$\alpha_{A_3}$", Drawing(sparrow(FF*A3, GG*A3), p, EndArrow), dir(0), p);

p = magenta + dotted + 0.7;
path Fa = (0.5,0)--FF*(-1,-0.2);
path Ga = (0.5,-0.6)--GG*(-1,-0.4);
label("$F$", Drawing(Fa, p, EndArrow), dir(135), p);
label("$G$", Drawing(Ga, p, EndArrow), dir(225), p);

p = lightred + 0.7;
label("$\alpha$", Drawing(sparrow(midpoint(Fa), midpoint(Ga)), p, EndArrow), dir(180), p);

p = grey + dashed;
pair B1 = Drawing(midpoint(FF*A2--GG*A1), p);
pair B2 = Drawing(0.6 * (FF*A3) + 0.4 * (GG*A2), p);
draw(sparrow(FF*A1, B1), p, EndArrow);
draw(sparrow(GG*A2, B1), p, EndArrow);
draw(sparrow(FF*A3, B2), p, EndArrow);
pair B3 = Drawing(FF*A3 + 0.7*dir(100), p);
draw(sparrow(B3, FF*A3), p, EndArrow);
label("$\mathcal B$", GG*(0.6*(A1+A3)));
draw(sparrow(FF*A2, GG*A3), p, EndArrow);
pair B4 = Drawing(FF*A1 + 0.5*dir(90), p);
draw(sparrow(FF*A1, B4), p, EndArrow);
