
int num =10;
float step, az, sz, offSet, speed, change;

void setup() {
  size(960, 540, P3D);
  strokeWeight(1);
  step = 5;
  change = 0.0;
}
void draw() {
background(20);
change = change + 0.02;
float n = map(abs(sin(change) * 200),0,200,60,250);
translate(width/2,height/2);
//println(n);
 camera(map(mouseX,0,960,-1000,2000), mouseY, 220.0, // eyeX, eyeY, eyeZ
        0.0, 0.0, 0.0, // centerX, centerY, centerZ
        0.0, 1.0, 0.0); // upX, upY, upZ

for(int i=0; i<num; i++){
stroke(255,0,0,n);
noFill();
sz = i*step;
float lineEnd1 = map(sin(speed*(i*0.2)), -1, 1, 0, 500);
sphere(lineEnd1);
}


speed += 0.002;
if (keyPressed){
  speed += 0.1;}}