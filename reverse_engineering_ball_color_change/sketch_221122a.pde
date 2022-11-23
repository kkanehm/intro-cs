int x= 15;
int y= 20;

int dx = 1;
int dy = 2;
void setup() {
  size(500, 500);
}

void draw() {
  background(187, 187, 188);
  circle(x, y, 20);
  // if the ball is at x=15 and y=20, go down
  if (x==475) {
    dx = -dx;
  }
  x=x+dx;
  y=y+dy;

  if (y>=500) {
    dy = -dy;
    fill( 5, 5, 248);
    }
  
  if(y<10) {
    dy=2;
    fill(0, 0, 0);
  }
  if(x<10) {
    dx=1;
    fill(255, 7, 247);
  }
  }
