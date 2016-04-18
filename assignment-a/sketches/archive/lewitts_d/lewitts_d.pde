
int a;
int b;
int c;

void setup () {
  size(500, 500);
}

void draw () {
  background (255);
  
  //strokeWeight(10);
  //stroke(0);
  //rect(40, 40, 420, 430);  
  
  //noLoop();
  //for (int i=0; i<50; i = i++)
  //for (int k=0; k<50; k = k+14)
  { 
    noLoop();
    for( int i = 0; i < 250; i = i + 9){
    noStroke();
    int a = int(random(255));
    int b = int(random(255));
    int c = int(random(255));
    fill(a, b, c);
    triangle(0 + i*2, 0 + i, 250, 500 - i*2.25, 500 - i*2, 0 + i);
  }}
}

void mousePressed() {
  println(mouseX, mouseY);
}

