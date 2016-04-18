void setup () {
size (960, 540);
}



void draw () {
background(216,190,151);
translate(200,0);
//to get still pictures, noLoop() stops the draw functio from looping
noLoop();
 for(int i = 0; i < 390; i = i + 5){
 line(100 + i, random(50, 80), 100 + i, random(400,450));}
 
 for(int h = 0; h < 60; h = h + 2) {
 line(30 + h, 320, 30 + h, 330);}

 //for positioning of boxes 1-4
 box1();
 pushMatrix();
 translate(200, 200);
 box1();
 popMatrix();
 pushMatrix();
 translate(0, 350);
 box1();
 popMatrix();
 pushMatrix();
 translate(0, 350);
 box1();
 popMatrix();
 pushMatrix();
 translate(-20, 30);
 box1();
 popMatrix();
 
 box2();
  pushMatrix();
 translate(200, 250);
 box2();
 popMatrix();
 
 box3();
 pushMatrix();
 translate(280, 300);
 box3();
 popMatrix();
 
 box4();
  pushMatrix();
 translate(180, 250);
 box4();
 popMatrix();
}

//functions for different types of boxes with lines

 void box1 () {
 for(float j = 0; j < 60; j = j + 1.5){
 line(130, 100+j, 160, 100 + j);
 strokeWeight(0.5);}
}

void box2 () {
for(float k = 0; k < 60; k = k + 1.5)
line(250, 180+k, 260, 180+k); }

void box3 () {
for(float k = 0; k < 40; k = k + 0.5)
line(140, 110+k, 180, 110+k);}

void box4 () {
for(float k = 0; k < 40; k = k + 1.5)
line(255+k, 185, 255+k, 255);}