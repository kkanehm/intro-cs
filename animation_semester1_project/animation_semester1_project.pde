String c = "Good luck";
int x=320;
int y=120;
float circleSize= 35;

int r;
int g;
int b;

int dx = 5;
int dy= 5;
void setup () {
  size(1000, 1000);
}

void draw() {
  r = (int) random(255);
  g = (int) random(255);
  b = (int) random(255);
  background(r, g, b);
  textSize(50);
  text(c, 500, 50);
  push();
  scale(0.5);
  fill( 13, 13, 15);
  stroke(16, 70, 224);
  rect(150, 225, 300, 300);
  // this is a body
  fill( 81, 174, 30);
  circle(300, 125, 200);
  // this is a head
  triangle(300, 525, 200, 700, 400, 700);
  // this is the lower body
  rect(200, 700, 65, 100);
  rect(335, 700, 65, 100);
  // this is the legs
  fill(255, 255, 255);
  circle(250, 100, 50);
  circle(355, 100, 50);
  // this is the eyes, I used two white cricles for it
  strokeWeight(25);
  rect(400, 240, 150, 15);
  rect(400, 300, 150, 15);
  // these are the left and right arms
  circle(575, 240, 30);
  // this is the left fist of the robot
  circle( 575, 300, 30);
  // this is the right first of the robot
  arc(300, 150, 90, 100, 0, 3.14);
  //this is the bottom lip of the mouth of the robot
  strokeWeight(13);
  line(350, 145, 250, 145);
  // this is the top lip of the mouth of the robot
  pop();
  fill(247, 227, 213);
  rect(950, 50, 50, 200);
  fill(255, 108, 0);
  rect(900, 200, 50, 50);
  fill(255, 108, 0);
  rect(800, 200, 100, 150);
  // these create the basketball hoop
  push();
  r = (int) random(255);
  g = (int) random(255);
  b = (int) random(255);
  fill(r, g, b);
  circle(x, y, circleSize);
  //this is the basketball
  // ball will grow by .05
  circleSize=circleSize+.05;
  // ball will shrink by .4
  circleSize = circleSize-.3;
  pop();

  // if ball is at x=320, y= 120 go right
  if (x==320 && y==120) {
    dx = 5;
    dy = 0;
  }
  // if ball is at x=830, y= 120, go down
  else if (x==830 && y==120) {
    dx= 0;
    dy =-5;
  }
  //if ball is at x=830, y= 800, go down
  else if (x==830 && y==800) {
    dx= -3;
    dy= 4;
  }
  println(x);

  x= x+dx;
  y= y-dy;
}
