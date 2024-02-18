import three;
size(2cm);
currentprojection=orthographic((2, -3, 4), Z);
draw(unitsphere, cyan+opacity(0.2));
draw(arc((0, 0, 0), (1, 0, 0), (-1, 0, 0), (0, 0, 1)));
dot((1, 0, 0));
dot((-1, 0, 0));
