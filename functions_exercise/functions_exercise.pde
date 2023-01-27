int r;
int g;
int b;
void setup (){
  size(700,700);
}

void draw() {
  background(r,g,b);
  textSize(50);
  text("Which is better",200, 100);
  
   r = (int) random(255);
  g = (int) random(255);
  b = (int) random(255);
  
  shoe();
  push();
  
  translate(100, 450);
  shoe();
  pop();
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
