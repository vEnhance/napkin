import three;
currentprojection=orthographic((2, -7, 1), up=Z);

pair project_up(real a){ a/=3; return (0, 1)+(a, -1)/(1+a^2); }
triple operator tuple(pair a, real b){ return (a.x, a.y, b); }

var halfcircle=shift(0, 0.5)*scale(0.5)*unitcircle;
draw(path3(halfcircle), blue);
var h=2;
draw(shift(0, 0.5, -h)*scale(0.5, 0.5, h*2)*unitcylinder, surfacepen=cyan+opacity(0.5));
dot((0, 1, 0), red);
for(int a=-7; a<=7; ++a){
	draw((I-project_up(a), -h)--(I-project_up(a), h), red);
}
for(real i=-3; i<=3; ++i) if(i!=0){
	real z=i/2;
	draw(shift(0, 0, z)*path3(arc((0., 0.5), 0.5, 270+40, 270+360-40)), red);
}
