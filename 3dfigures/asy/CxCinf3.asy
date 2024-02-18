import three;
import graph3;
size(12cm);
var halfcircle=shift(0, 0.5)*scale(0.5)*unitcircle;
var maxH=2.5;
draw(shift(0, 0.5, -maxH)*scale(0.5, 0.5, maxH*2)*unitcylinder, surfacepen=cyan+opacity(0.9));
draw(path3(halfcircle), blue);
dot((0, 0, 0), purple);
dot((0, 1, 0), red);

real pile(real z){
	// any function that is large near z=0 and small as z → ± ∞.
	return 1/(1+z^2);
}
pair weight(real z){
	// return ≈ (1, 0) for z ≈ 0 and ≈ (0, 1) for z ≈ ∞.
	if(abs(z)<1e-9) return (1, 0);
	if(abs(z)>1e9) return (0, 1);
	real a=pile(z), b=pile(1/z);
	return (a/(a+b), b/(a+b));
}

triple wrap(real z, real h){
	pair p=(0, 1)+(z, -1)/(1+z^2);
	var ab=weight(z), a=ab.x, b=ab.y;
	return (p.x, p.y, z==0 ? h: h*a+(h/z)*b);
}
maxH=2;

for(real z=-7/3; z<=7/3+1e-7; z+=1/3){
	draw(wrap(z, -maxH)--wrap(z, maxH), purple);
}
for(real t=-7/3; t<=7/3+1e-7; t+=1/3){
	if(t==0) t=1e-9;
	draw(wrap(1/t, -maxH/t)--wrap(1/t, maxH/t), red);
}

for(real h=-1.5; h<=1.5+1e-7; h+=1/2){
	if(h==0) continue;

	draw(graph(
	new triple(real z){
		return wrap(z, h);
	}
	, -7/3, 7/3, operator..), purple);

	var limit=min(7/3, maxH/h);
	draw(graph(
	new triple(real z){
		return wrap(z, z*h);
	}
	, -limit, limit, operator..), green+opacity(0.7));

	draw(graph(
	new triple(real t){
		if(t==0) t=1e-9;
		return wrap(1/t, h/t);
	}
	, -7/3, 7/3, operator..), red+opacity(0.7));
}

picture p;
addViews(p, currentpicture, new projection[][]{
	{
		orthographic(rotate(-70, Z)*(2, -7, 1), up=Z),
		orthographic((2, -7, 1), up=Z),
		orthographic(rotate(70, Z)*(2, -7, 1), up=Z),
		orthographic(rotate(140, Z)*(2, -7, 1), up=Z),
	}
});
currentpicture=p;
