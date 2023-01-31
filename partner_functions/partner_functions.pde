void setup() {
  size(700, 700);
}

void draw() {
  background(102);
  //translate (-100,-100);
  push();
  rotatingcircle(); 
  pop();
  
  push();
  translate (130,10);
  rotatingcircle();
  pop();
  
  push();
  translate (270,10);
  rotatingcircle();
  pop();
  
  push();
  translate(150, -100);
  shoe();
  pop();
}

void rotatingcircle() {
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);  // Icosagon
  popMatrix();
}
 


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE); // I took this code from processing's web site //and I took this from Daniyaal
}

void shoe() {
  translate(-75,-200);
  fill(2,30,142);
  beginShape();
  vertex(200, 400);
  vertex(200, 600);
  vertex(600,600);
  vertex(600, 500);
  vertex(400, 450);
  vertex(350, 400);
  vertex(285,430);
  endShape();
}
