if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-5B";
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

size(6cm);
pair pointof(real a, real b){
return (a+b*sqrt(11), a-b*sqrt(11));
}
real threshold=6.5;
bool valid(real x, real y){
return -threshold<=x && x<=threshold && -threshold<=y && y<=threshold;
}
bool valid(pair p){ return valid(p.x, p.y); }

for(int a=-8; a<=8;++a){
for(int b=-2; b<=2;++b){
var p=pointof(a, b);
if(valid(p)) dot(p, blue);
}
}

var axisthreshold=threshold+0.2;
graph.xaxis(xmin=-axisthreshold, xmax=axisthreshold);
graph.yaxis(ymin=-axisthreshold, ymax=axisthreshold);

var t=graph.graph(new real(real a){ return 1/a; }, -axisthreshold, -1/axisthreshold);
var p=red;
draw(t, p);
draw(scale(-1)*t, p);
draw(scale(1, -1)*t, p);
draw(scale(-1, 1)*t, p);


real norm(pair p){
return abs(p.x*p.y);
}

pair[] tryround(pair q){
pair[] l;
for(int a=-8; a<=8;++a){
for(int b=-2; b<=2;++b){
var p=pointof(a, b);
if(valid(p) && norm(p-q)<1) l.push(p);
}
}
l=sort(l, new bool(pair a, pair b){
return norm(a-q)<norm(b-q);
});
return l;
}

for(pair p: new pair[]{
(-2, 1.4),
(-1.7, 1.8),
(3.1, 3.7),
(4, -5),
}){
var l=tryround(p);
draw(p--l[0], Arrow);
for(var q: l[1:]){
draw(p--q, Arrow, p=gray);
}
dot(p, red);
}

for(int a=-8; a<=8;++a){
for(int b=-2; b<=2;++b){
var p=pointof(a, b);
if(valid(p)) dot(p, blue);
}
}
