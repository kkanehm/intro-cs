int x = 0;
int y = 900;

void setup() {
  size(1000, 1000);
}

void draw() {
  background (100);
  square(x, 0, 100);
  x= x + 1;
  circle(900, y, 100);
  y= y - 1;
}
