
int num =250;
float step, az, sz, offSet, speed, change;

void setup() {
  size(960, 540, P3D);
  strokeWeight(2);
  step = 5;
  change = 0.0;
}
void draw() {
background(20);
change = change + 15;
//float n = noise(change) * 250;

for(int i=0; i<num; i++){
stroke(255,0,0);
noFill();
sz = i*step;
float lineEnd1 = map(sin(speed*(i*0.2)), -1, 1, 0, 500);
line(0, sz, lineEnd1, sz);
}

for(int i=0; i<num; i++){
stroke(255,0,0);
noFill();
sz = i*step;
float lineEnd2 = map(sin(speed*(i*0.2)), -1, 1, 460, 960);
line(960, sz, lineEnd2, sz);
}

speed += 0.002;
if (keyPressed){
  speed += 0.1;}
}