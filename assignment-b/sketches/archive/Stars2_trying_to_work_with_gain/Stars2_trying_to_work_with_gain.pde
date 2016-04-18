

float amt;

Star[] stars = new Star[2000];
float z = 0;
float gain = 0;
 
void setup() {
  size(800, 800, P3D);
 
  for(int i=0; i<stars.length; i++) {
    
    stars[i] = new Star(random(-width, width), random(-width, width), random(-width, width));
  }
}
 
void draw() {

 background(20); 
  float mX = map(mouseX, 0, width, 100, width*2);
  camera(0, 0, mX, 0, 0, 0, 0, 1, 0);

 rotateY(z);
 rotateZ(z);
 z = z + 0.001;
  
   for(int i=0; i<stars.length; i++) {
    stars[i].fly(0);
   }
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
   fill(255);    
   noStroke();
   box(s);   
   popMatrix();
 }
}