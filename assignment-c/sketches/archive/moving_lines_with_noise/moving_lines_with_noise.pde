int num =20;
float step, sz, offSet, speed;

void setup() {
  size(600, 400);
  strokeWeight(5);
  step = 20;
}
void draw() {
background(20);
translate(width/2,height*.75);
for(int i=0; i<num; i++){
stroke(255);
noFill();
sz = i*step;
float offset = TWO_PI/num*i;
float arcEnd = map(noise(speed+offset), -1, 1, PI, TWO_PI);
arc(0, 0, sz, sz, PI, arcEnd);
}
speed += 0.05;
}