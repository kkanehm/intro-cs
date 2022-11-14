int y=700;
int dr=1;
int r=1;
void setup() {
  size(600, 1000);
}
void draw() {
  background(150);
  scale(.65);
  fill( 13, 13, 15);
  stroke(16, 70, 224);
  rect(150, 225, 300, 300);
  // this is a body
  fill( 81, 174, 30);
  circle(300, 125, 200);
  // this is a head
  triangle(300, 525, 200, 700, 400, 700);
  // this is the lower body

  rect(200, y, 65, 100);
  rect(335, y, 65, 100);
  y = y + 5;
  if (y>1000) {
    y = 700;
  }
  // this is the legs
  fill(255, 255, 255);
  circle(250, 100, 50);
  circle(355, 100, 50);
  // this is the eyes, I used two white cricles for it
  strokeWeight(25);
  line(500, 500, 400, 280);
  // this is the right arm of the robot
  line(200, 280, 110, 520);
  // this is the left arm of the robot
   push();
   translate(200, 300);
  rotate(radians(r));
  r = r + dr;
  println(r);
  circle(200, 200, 30);
  // this is the left fist of the robot
  circle(150, 270, 30);
// this is the right first of the robot
 pop();
  arc(300, 150, 90, 100, 0, 3.14);
  //this is the bottom lip of the mouth of the robot
  strokeWeight(13);
  line(350, 145, 250, 145);
  // this is the top lip of the mouth of the robot
}
