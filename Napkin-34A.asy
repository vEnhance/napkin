if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-34A";
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

size(7cm);
cplane();
pair T;
pair[] A = new pair[5];

real r = 1.44;
real[] dirs = {25,120,155,215,325};
real[] mag = {1.5,1.9,1.25,0.9,1.8};
for (int i=0; i<5; ++i) {
A[i] = mag[i]*dir(dirs[i]);
if (i < 2) {
dot("$z_{" + (string) (i+1) + "}$", A[i], dir(dirs[i]), red);
}
else {
dot("$z_{" + (string) (i+1) + "}$", A[i], dir(dirs[i]), blue);
}
}
draw(A[0]..(0.8*A[0]+0.6*A[1])..A[1], red, EndArrow);
draw(A[1]..(0.2*A[0]+0.4*A[1])..A[0], red, EndArrow);
