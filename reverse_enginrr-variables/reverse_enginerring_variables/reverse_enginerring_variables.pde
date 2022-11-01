int x = 0;
int y = 100;
int z = 100;
void setup() {
  size(1000, 1000);
}

void draw() {
  background(100);
  fill(255, 0, 0, 100);
  circle(500, 500, 300);
  fill(252, 248, 247);
  square(600, x, 50);
  x= x+1;
  square(100, 0, y);
  y= y-1;
  triangle (1, 1, 1, 100, z, 50);
  z =z+2;
}
