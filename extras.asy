import graph;

// from cse5
pair origin = (0,0);
pair MP(Label L, pair A, pair B=plain.S, pen p=defaultpen) {
	Label M=L;
	M.s="\("+L.s+"\)";
	label(M,A,B,p);
	return A;
}
pair Drawing(Label L="", pair A, pair B=plain.S, pen p=defaultpen) {
	dot(MP(L, A, B, p), p);
	return A;
}
path Drawing(path p, pen q=defaultpen, arrowbar ar=None) {
	draw(p,q,ar);
	return p;
}
path CP(pair P, pair A) { return circle(P, abs(A-P)); }
path CR(pair P, real r) { return circle(P, r); }
pair IP(path p, path q) { return intersectionpoint(p,q); }
pair OP(path p, path q) { return intersectionpoints(p,q)[1]; }
picture CC() {
	picture p=rotate(0)*currentpicture;
	currentpicture.erase();
	return p;
}

// Napkin extras

void bigbox(string L) {
	filldraw((-4,3)--(4,3)--(4,-3)--(-4,-3)--cycle,
		lightblue+opacity(0.2), black);
	label(L, (4,3), dir(-45));
}
void bigblob(string L) {
	filldraw((-4,3)..(-5,1)..(-4.7,0)..(-4.1,-2)..(-4,-3)
		..(-1,-3.3)..(1,-3.2)..(4,-3)
		..(4.3,-1)..(4.1,0.5)..(4,3)
		..(2,3.3)..(0,3.1)..(-3,2.9)..cycle,
		lightblue+opacity(0.2), black);
	label(L, (4,3), dir(5));
}

real[] default_ticks = {-4,-3,-2,-1,0,1,2,3,4};
void cplane(real theta=-45, real[] T = default_ticks, real xmin = -4.5, real xmax = 4.5, real S = 3) {
	graph.xaxis("Re", xmin, xmax, graph.Ticks(format="%", Ticks=T, Size=S), Arrows);
	graph.yaxis("Im", xmin, xmax, graph.Ticks(format="%", Ticks=T, Size=S), Arrows);
	Drawing("0", (0,0), dir(theta));
}

pair opendot(pair P, pen p = defaultpen) {
	dot(P, p, UnFill);
	dot(P, p, Draw);
	return P;
}
