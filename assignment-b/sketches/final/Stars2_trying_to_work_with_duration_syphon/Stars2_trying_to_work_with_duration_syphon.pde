import oscP5.*;
import java.util.concurrent.*;
import codeanticode.syphon.*;

SyphonServer server;

void settings() {
  size(800,800, P3D);
  PJOGL.profile=1;
}


OscP5 osc;

int col;
int pos1;
int bgcol;

boolean show = false;

float amt;

Star[] stars = new Star[2000];
float z = 0;
float gain = 0;
 
void setup() {
  size(800, 800, P3D);
  osc = new OscP5(this, 12345);
  server = new SyphonServer(this, "Processing Syphon");
  for(int i=0; i<stars.length; i++) {
    
    stars[i] = new Star(random(-width, width), random(-width, width), random(-width, width));
  }
}
 
void draw() {

 background(bgcol); 
 if(show == true){
 bgcol = 0;
 }else{
 bgcol = bgcol;}
  float mX = map(pos1, 0, width, 100, width*2);
  camera(0, 0, mX, 0, 0, 0, 0, 1, 0);

 rotateY(z);
 rotateZ(z);
 z = z + 0.001;
  
   for(int i=0; i<stars.length; i++) {
    stars[i].fly(0);
   }
       server.sendScreen();
}

class Star {
 float x;
 float y;
 float z;
 float s = random(2, 10);
  
 Star(float starX, float starY, float starZ) {
 x = starX;
 y = starY;
 z = starZ;
 }
  
 void fly(int speed) {
   x = x - speed;
   y = y - speed;
      
   pushMatrix();
   translate(x, y , z);
   fill(col);    
   noStroke();
   box(s);   
   popMatrix();
 
 }
}

void oscEvent(OscMessage m) {

  if(m.getAddress().equals("/curves")) {
  col = int(map(m.get(0).floatValue(), 0, 1, 0, 255));
}
{
if(m.getAddress().equals("/curves2")) {
  pos1 = int(map(m.get(0).floatValue(), 0, 1, 800, 100));
}
}
{
if(m.getAddress().equals("/curves3")) {
  bgcol = int(map(m.get(0).floatValue(), 0, 1, 0, 255));}
}
{
if (m.getAddress().equals("/bang1")) {
    show = true;
    delay(50);
    show = false;
  }}
} 