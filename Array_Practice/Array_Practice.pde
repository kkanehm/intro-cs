float[] dropYs = {70, 80, 20, 93, 432, 123, 502, 301, 435, 222};
int a= 1000;
int b= 600;
int c= 1000;
float d= 600;
void setup() {
  size(1000, 600);
}

void draw() {
  background(100, 0, 100);
  for (int y = 0; y<10; y=y+1) {
    raindrop(50 + 100 * y, dropYs[y], 30, 40);
    dropYs[y] = dropYs[y] + 1;
    if (dropYs[y]>=600) {
      dropYs[y]= 50;
    
      }
    }
    puddle(a, b, c, d);
   d=d+ .1;
  }




void puddle(float xCenter, float yCenter, float w, float h) {
  ellipse(xCenter - w/2, yCenter, xCenter + w/2, yCenter - h);
}
void raindrop(float xCenter, float yCenter, float w, float h) {
  fill(7,90,160);
  strokeWeight(0);
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);
  arc(xCenter, yCenter, w, h, 0, PI);
}
