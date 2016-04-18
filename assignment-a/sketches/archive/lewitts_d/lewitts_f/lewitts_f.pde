
void setup () {
  size(500, 500);
}

void draw () {
  background (255); 
    noLoop();
    for ( int i = 0; i < 410; i = i + 9) {
      noStroke();
      int a = int(random(255));
      int b = int(random(255));
      int c = int(random(255));
      fill(a,b,c);
      triangle(-375 + i*1.5, -250 + i, 250, 1000 - i*2, 875 - i*1.5, -250 + i);
    }
}

