import three;
size(6cm);
currentprojection=orthographic((2, -3, 1), up=Z);

draw((-2, 0, 0)--(2, 0, 0), Arrow3, L=Label("$\operatorname{Re} z$", EndPoint));
draw((0, -2, 0)--(0, 2, 0), Arrow3, L=Label("$\operatorname{Im} z$", EndPoint));
draw((-2, 0, 1)--(2, 0, 1), Arrow3, L=Label("$\operatorname{Re} t$", EndPoint));
draw((0, 2, 1)--(0, -2, 1), Arrow3, L=Label("$\operatorname{Im} t$", EndPoint, align=W));
draw(shift(0, 0, 0.5)*scale3(0.5)*unitsphere, opacity(0.3)+lightcyan);

triple other_intersection_with_sphere(triple a, triple b){
	triple o=(0, 0, 0.5);
	// let a be on the sphere centered at o
	// return the other intersection of line ab with sphere o
	triple h=a+dot(b-a, o-a)/abs(b-a)^2*(b-a);
	return h*2-a;
}

void draw_projection(triple a, triple b, pen p){
	draw(a--b, p);
	dot(other_intersection_with_sphere(a, b), p);
	dot(b, p);
}
draw_projection((0, 0, 1), (1.3, 0.7, 0), red);
draw_projection((0, 0, 0), (1.3, -0.7, 1), blue);
