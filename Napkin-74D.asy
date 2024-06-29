if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-74D";
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

size(13cm);

void drawx(transform t){
for(int i=0; i<4; ++i){
filldraw(t*rotate(i*90)*((3, -3)--(3, 3)--(1, 1)--(1, -1)--cycle), lightcyan, lightred+1.5);
draw(t*rotate(i*90)*((1, -1)--(3, 3)), lightred+1.5);
}
}
transform t=identity;
void drawarrow(path p){
draw(t*p, linewidth(1.5), Arrow(size=5));
}
drawx(t);
drawarrow((-3, 3)--(1, 1)--(1, -0.3));
drawarrow((-1, -1)--(0.7, -1));
label("$C_1(X^1)$", t*(0, -3), align=S);

t=shift(8, 0);
drawx(t);
drawarrow((-3, 3)--(1, 1));
path tmp=(-1, -1)--(3, -3);
pair d=dir(tmp);
drawarrow((point(tmp, 0.2)){d*dir(20)}..{d*dir(-20)}(point(tmp, 0.8)){-d*dir(20)}..{-d*dir(-20)}cycle);
label("$Z_1(X^1, X^0)$", t*(0, -3), align=S);

t=shift(8, 0)*t;
drawx(t);
drawarrow((point(tmp, 0.2)){d*dir(20)}..{d*dir(-20)}(point(tmp, 0.8)){-d*dir(20)}..{-d*dir(-20)}cycle);
label("$B_1(X^1, X^0)$", t*(0, -3), align=S);

t=shift(8, 0)*t;
drawx(t);
drawarrow((-3, 3)--(1, 1));
label("$\operatorname{Cells}_1(X)$", t*(0, -3), align=S);

t=shift(-23, -8.5)*t;
drawx(t);
drawarrow((-3, 3)--(1, 1)--(1, -1)--(-1, -1)--(-3, -3)--cycle);
label("$\ker(\operatorname{Cells}_1(X) \to \operatorname{Cells}_0(X))$", t*(0, -3), align=S);

t=shift(12, 0)*t;
drawx(t);
drawarrow((-3, 3)--(1, 1)--(-1, 1)--(-1, -1)--(-3, -3)--cycle);
label("$\operatorname{im}(\operatorname{Cells}_2(X) \to \operatorname{Cells}_1(X))$", t*(0, -3), align=S);

t=shift(10, 0)*t;
drawx(t);
drawarrow((-1, 1)--(1, 1)--(1, -1)--(-1, -1)--cycle);
label("$H_1(\operatorname{Cells}_\bullet(X))$", t*(0, -3), align=S);
