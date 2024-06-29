if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-44F";
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

bigblob("$U$");
pair p = (-2,-2);
dot("$p$", p, dir(225), red);
pair p1 = p + 1.4*dir(120);
pair p2 = p + 1.7*dir(10);
draw(p--p1, red, EndArrow);
draw(p--p2, red, EndArrow);
label("$v_1$", p1, dir(p1-p), red);
label("$v_2$", p2, dir(p2-p), red);
label("$\alpha_p(v_1, v_2) \in \mathbb R$", p+dir(45)*3);
