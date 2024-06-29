if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-33D";
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
pair O = origin;
pair T;
pair[] A = new pair[8];
real r = 3.24;
real[] dirs = {45,45,45,135,135,255,-45,-45};
for (int i=0; i<8; ++i) {
A[i] = O + r*dir(i*45);
dot("$z_{" + (string) i + "}$", A[i], dir(dirs[i]), red);
}
draw(A[0]..A[1]..A[2]..A[3]..A[4]..A[5]..A[6]..A[7]..cycle, red);

real[] dirs = {-65, -15, 15, 45, 45, 135, 143, 135};
for (int i=0; i<8; ++i) {
A[i] = sqrt(abs(A[i]))*dir(degrees(A[i])/2);
dot("$w_{" + (string) i + "}$", A[i], dir(dirs[i]), blue);
}
draw(A[0]..A[1]..A[2]..A[3]..A[4]..A[5]..A[6]..A[7]..(-A[0]), blue);
