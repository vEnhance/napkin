if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56A";
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

import graph;
size(10cm);

picture q;
graph.xaxis(q, -5.2, 5.2);
graph.yaxis(q, -5.2, 5.2);

picture left, right;
add(left, q); add(right, q);
draw(left, yscale(sqrt(5))*unitsquare, cyan);
draw(right, scale(2, 2*sqrt(5))*unitsquare, cyan);
draw(right, rotate(angle(1+sqrt(5)*I)*180/pi)*scale(abs(1+sqrt(5)*I))*yscale(sqrt(5))*unitsquare, cyan);
for(int x=-8; x<=8; ++x){
for(int y=-8; y<=8; ++y){
pair p=x+y*sqrt(5)*I;
if(max(abs(p.x), abs(p.y))<=5){
dot(left, p, blue);
dot(right, p, (x+y)%2==0 ? blue: white*0.7
);
}
}
}

add(currentpicture, left);
add(currentpicture, shift(12, 0)*right);
