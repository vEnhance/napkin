///////////////////////////////////////////////////
// Olympiad Asymptote Package
// By Maria Monks and AoPS community
// Last Updated: 08/26/2007
/////////////////////////////////////////////////////

// This package contains many constructions and calculations  
// that often come up in Olympiad-level Geometry problems.
//

include graph;
include math;
real markscalefactor=0.03;

///////////////////////////////////////////
// USEFUL POINTS
///////////////////////////////////////////

// Substitutes origin for (0,0) for ease of notation:
pair origin;
origin=(0,0);

// The point r of the way along path p with respect to arc length, where r is a real value between 0 and 1 inclusive:
pair waypoint(path p, real r)
{ 
	return point(p,reltime(p,r));
}

// The midpoint of path p:
pair midpoint(path p){ return waypoint(p,.5);}

// The foot of the perpendicular from P to line AB:
pair foot(pair P,pair A, pair B)
{ 
	real s; 
	s=dot(P-A,unit(B-A)); 
	return (scale(s)*unit(B-A)+A);
}

// The point on the angle bisector of <ABC that is a unit distance from B.
// If only two points A and B are specified, the function returns a point
// on the perpendicular bisector of AB, a unit distance from the segment. 
pair bisectorpoint(pair A ... pair[] BC)
{
	pair P,B,C,M; 
	if (BC.length==1) 
	{  
		B=BC[0];  
		M=midpoint(A--B);  
		P=unit(rotate(90,M)*A-M)+M; 
	} 
	else if (BC.length==2) 
	{  
		B=BC[0];  
		C=BC[1];  
		P=unit(midpoint((unit(A-B)+B)--(unit(C-B)+B))-B)+B; 
	} 
	return P;
}

///////////////////////////////////////////
// CIRCLES
///////////////////////////////////////////

// CIRCUMCIRCLE: //

// The circumcenter of triangle ABC:
pair circumcenter(pair A=(0,0), pair B=(0,0), pair C=(0,0))
{ 
	pair M,N,P,Q; 
	M=midpoint(A--B); 
	N=midpoint(B--C); 
	P=rotate(90,M)*A; 
	Q=rotate(90,N)*B; 
	return extension(M,P,N,Q);
}

// The circumradius of triangle ABC:
real circumradius(pair A,pair B,pair C)
{ 
	return abs(circumcenter(A,B,C)-A);
}

// The circumcircle of triangle ABC:
guide circumcircle(pair A=(0,0), pair B=(0,0), pair C=(0,0))
{ 
	return Circle(circumcenter(A,B,C),circumradius(A,B,C));
}

// INCIRCLE: //

// The incenter of triangle ABC:
pair incenter(pair A=(0,0), pair B=(0,0), pair C=(0,0))
{ 
	pair P,Q; 
	P=rotate((angle(C-A)-angle(B-A))*90/pi,A)*B; 
	Q=rotate((angle(A-B)-angle(C-B))*90/pi,B)*C; 
	return extension(A,P,B,Q);
}

// The inradius of triangle ABC:
real inradius(pair A,pair B,pair C)
{ 
	real a,b,c,s; 
	a=abs(B-C); 
	b=abs(A-C); 
	c=abs(B-A); 
	s=(a+b+c)/2; 
	return sqrt(s*(s-a)*(s-b)*(s-c))/s;}

// The inscribed circle of triangle ABC:
guide incircle(pair A=(0,0), pair B=(0,0), pair C=(0,0))
{ 
	return Circle(incenter(A,B,C),inradius(A,B,C));
}

// The nth point of tangency from a point P to the circle with center O and radius r
// where n can be 1 or 2 - the points of tangency are labeled in counterclockwise order around the circle.
// If P is inside the circle, the center of the circle is returned rather than an error.
pair tangent(pair P, pair O, real r, int n=1)
{  
	real d,R;  
	pair X,T;  
	d=abs(P-O);  
	if (d<r) return O;  
	R=sqrt(d^2-r^2);  
	X=intersectionpoint(circle(O,r),O--P);  
	if (n==1)
	{    
		T=intersectionpoint(circle(P,R),Arc(O,r,degrees(X-O),degrees(X-O)+180));    
	}  
	else if (n==2)
	{    
		T=intersectionpoint(circle(P,R),Arc(O,r,degrees(X-O)+180,degrees(X-O)+360));    
	}  
	else {T=O;}  
	return T;
}

// Returns true if ABCD is a cyclic quadrilateral
// Tests if the circumcenters of ABC and ABD are equal within 10^(-5) 
bool cyclic(pair A, pair B, pair C, pair D) 
{ 
	if (abs(circumcenter(A,B,C).x-circumcenter(A,B,D).x)<1/10^(5) && abs(circumcenter(A,B,C).y-circumcenter(A,B,D).y)<1/10^(5)) return true;
    else return false; 
}

///////////////////////////////////////////
// COLLINEARITY AND CONCURRENCY
///////////////////////////////////////////

// Returns true if the lines AB, CD, EF are concurrent 
// within 10^(-5) (to avoid approximation errors),
// or if AB, CD, EF are mutually parallel, intersecting at infinity.
bool concurrent(pair A, pair B, pair C, pair D, pair E, pair F)
{ 
	if ( abs(extension(A,B,C,D).x-extension(C,D,E,F).x)<1/10^(5) &&       
		 abs(extension(A,B,C,D).y-extension(C,D,E,F).y)<1/10^(5) ||     
		 (extension(A,B,C,D)==(infinity,infinity) && 
		 (infinity,infinity)==extension(C,D,E,F))) 
	return true; 
	else return false;
}

// Returns true if points A, B, and C are collinear.
bool collinear(pair A, pair B, pair C)
{ 
	if (A==B || B==C || A==C || abs(unit(B-A)-unit(C-A))<1/10^5 || abs(unit(B-A)+unit(C-A))<1/10^5)  
	return true; 
	else return false;
}

///////////////////////////////////////////
// TRIANGLES AND ASSOCIATED POINTS
///////////////////////////////////////////

// The centroid of triangle ABC:
pair centroid(pair A, pair B, pair C)
{ 
	return (A+B+C)/3;
}

// The orthocenter of triangle ABC:
pair orthocenter(pair A, pair B, pair C)
{ 
return extension(A,foot(A,B,C),B,foot(B,A,C));
}

///////////////////////////////////////////
// TICKMARKS AND ANGLE MARKS
///////////////////////////////////////////

// Returns a right angle mark at B given a right angle ABC
// The optional argument s specifies the side length of the mark in ps points:

path rightanglemark(pair A, pair B, pair C, real s=8)
{ 
	pair P,Q,R; 
	P=s*markscalefactor*unit(A-B)+B; 
	R=s*markscalefactor*unit(C-B)+B; 
	Q=P+R-B; 
	return P--Q--R;
}

// Returns an angle mark on angle ABC consisting of several arcs centered at B.
// The optional arguments t, s[] specify the radius of the arcs in increasing order:
path anglemark(pair A, pair B, pair C, real t=8 ... real[] s)
{ 
	pair M,N,P[],Q[]; 
	path mark; 
	int n=s.length;
	M=t*markscalefactor*unit(A-B)+B; 
	N=t*markscalefactor*unit(C-B)+B; 
	for (int i=0; i<n; ++i)  
	{  
		P[i]=s[i]*markscalefactor*unit(A-B)+B;  
		Q[i]=s[i]*markscalefactor*unit(C-B)+B; 
	} 
	mark=arc(B,M,N); 
	for (int i=0; i<n; ++i) 
	{  
		if (i%2==0)  
		{   
			mark=mark--reverse(arc(B,P[i],Q[i]));  
		}  
		else  
		{   
			mark=mark--arc(B,P[i],Q[i]);   
		} 
	} 
	if (n%2==0 && n!=0) 
	mark=(mark--B--P[n-1]); 
	else if (n!=0) 
	mark=(mark--B--Q[n-1]); 
	else mark=(mark--B--cycle); 
	return mark;
}

// A picture marking a path g with n ticks spaced spacing apart, with length s in ps points
// such that the middle tick mark (or one of the two if n is even) is normal to g
// and located r of the way along path g:
picture pathticks(path g, int n=1, real r=.5, real spacing=6, real s=8, pen p=currentpen)
{ 
	picture pict; 
	pair A,B,C,direct; 
	real t,l=arclength(g), space=spacing*markscalefactor, halftick=s*markscalefactor/2, startpt; 
	if (n>0) 
	{  
		direct=unit(dir(g,arctime(g,r*l)));  
		startpt=r*l-(n-1)/2*space;  
		for (int i=0; i<n; ++i)  
		{  
			t=startpt+i*space;  
			B=point(g,arctime(g,t))+(0,1)*halftick*direct;  
			C=B+2*(0,-1)*halftick*direct;  
			draw(pict,B--C,p);  
		} 
	} 
	return pict;
}