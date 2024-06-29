if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-33B";
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
draw(origin--(4.2*dir(180)), grey+2);
pair O = (-2.8, 1.9);
pair T;
pair[] A = new pair[8];
real r = 1.44;
real[] dirs = {45,45,45,135,175,225,-45,-45};
for (int i=0; i<8; ++i) {
A[i] = O + r*dir(i*45);
dot("$z_{" + (string) i + "}$", A[i], dir(dirs[i]), red);
}
draw(A[0]..A[1]..A[2]..A[3]..A[4]..A[5]..A[6]..A[7]..cycle, red);

real[] dirs = {-45, -15, 15, 75, 105, 150, 210, 260};
for (int i=0; i<8; ++i) {
A[i] = sqrt(abs(A[i]))*dir(degrees(A[i])/2);
if (degrees(A[i]) > 90) { A[i] *= -1; }
dot("$w_{" + (string) i + "}$", A[i], dir(dirs[i]), blue);
}
draw(A[0]..A[1]..A[2]..A[3]..A[4]..A[5]..A[6]..A[7]..cycle, blue);
