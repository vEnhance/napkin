if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-50C";
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
for(int x=-2; x<=2;++x){
for(int y=-2; y<=2;++y){
var d=(x+y*I)*2;
string complex_to_str(pair p){
if(p==0) return "0";
if(p.y==0) return string(p.x);
if(p.x==0) return p.y==1 ? "i": p.y==-1 ? "-i": string(p.y)+"i";
return string(p.x)+(p.y>0 ? "+": "")+string(p.y)+"i";
}
draw((x, y)--(x+0.2, y), Arrow, L=Label("\tiny $"+complex_to_str(d )+"$", EndPoint, align=E*0.3+N));
draw((x, y)--(x, y+0.2), Arrow, L=Label("\tiny $"+complex_to_str(d*I )+"$", EndPoint, align=N*0.7 ));
draw((x, y)--(x-0.2, y), Arrow, L=Label("\tiny $"+complex_to_str(-d )+"$", EndPoint, align=W*0.3+S));
draw((x, y)--(x, y-0.2), Arrow, L=Label("\tiny $"+complex_to_str(-d*I)+"$", EndPoint, align=S*0.7 ));
}
}
graph.xaxis(xmin=-2.8, xmax=2.8);
graph.yaxis(ymin=-2.8, ymax=2.8);
label("$\operatorname{Re} z$", (2.8, 0), S);
label("$\operatorname{Im} z$", (0, 2.8), E);
