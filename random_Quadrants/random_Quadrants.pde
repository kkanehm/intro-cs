int x;
int y;
float circleSize;
 int shapeType;

void setup() {
  size(600,600);
}
void draw() {
 x = (int) random(600);
 y=(int) random(600);
if (x>=300 && y>=300) {
  fill(16,148,18);
circle (x,y,20); }
  else if (x<=300 && y>=300) {
  fill(254,255,0);
  circle (x,y,20); }
  else if (x>=300 && y<=300) {
  fill(255,0,0);
  circle (x,y,20); }
  else  {
  fill(#0000FF);
  circle (x,y,20); }
 
}
