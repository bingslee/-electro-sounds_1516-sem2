import oscP5.*;
import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

int num =10;
float step, az, sz, offSet, speed, change, fast;

OscP5 osc;

int posX;
int posY;
float show;

int bgCol;
boolean bo1 = false;


void settings() {
  size(960, 540, P3D);
  PJOGL.profile=1;
}

void setup() {
frameRate(30);
syphon = new SyphonServer( this , "p5-to-syphon" );
osc = new OscP5(this, 12345);
  strokeWeight(1);
  step = 5;
  change = 0.0;
}
void draw() {
background(bgCol);
change = change + 0.02;
float n = map(abs(sin(change) * 200),0,200,60,250);
translate(width/2,height/2);
//println(n);
 camera(map(posX,0,960,-1000,2000), posY, 220.0, // eyeX, eyeY, eyeZ
        0.0, 0.0, 0.0, // centerX, centerY, centerZ
        0.0, 1.0, 0.0); // upX, upY, upZ

for(int i=0; i<num; i++){
stroke(255,0,0,n);
noFill();
sz = i*step;
float lineEnd1 = map(sin(speed*(i*0.2)), -1, 1, 0, 500);
sphere(lineEnd1);

if(show >= 0.5){
squares();}

speed += 0.001;
if (fast >= 0.5){
  speed += 0.1;} 
  else {
  speed += 0.001;}
  
 if(bo1 == true){
 blackOut();}
syphon.sendScreen( );
}
}

  
 void oscEvent(OscMessage m) {

  if (m.getAddress().equals("/c1")) {
    posX = int(map(m.get(0).floatValue(), 0, 1, 0, 960));
  }
    if (m.getAddress().equals("/c2")) {
      posY = int(map(m.get(0).floatValue(), 0, 1, 0, 540));
    }
    if (m.getAddress().equals("/c3")) {
    show = m.get(0).floatValue();
    }
     if (m.getAddress().equals("/c4")) {
     fast =  m.get(0).floatValue();}
     
    if (m.getAddress().equals("/c5")) {
     bgCol =  int(map(m.get(0).floatValue(), 0, 1, 0, 255));}
     if (m.getAddress().equals("/bang1")) {
     bo1 = true;
  }}