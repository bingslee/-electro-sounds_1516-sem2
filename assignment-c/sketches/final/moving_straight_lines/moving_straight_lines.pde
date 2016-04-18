//num = 20 indicates the number of lines
int num =20;
float step, az, sz, offSet, speed;

void setup() {
  size(600, 400);
  strokeWeight(5);
  step = 20;
}
void draw() {
background(20);
//translate(width/2,height*.75);
for(int i=0; i<num; i++){
stroke(255);
noFill();
sz = i*step;
float lineEnd = map(sin(speed*(i*0.2)), -1, 1, 0, 600);
line(0, sz, lineEnd, sz );
}
speed += 0.02;
}