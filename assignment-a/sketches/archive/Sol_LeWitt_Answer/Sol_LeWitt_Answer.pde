
void setup () {
  size(960, 540);
}

void draw () {
  background (255); 
    noLoop();
    for ( int i = 0; i < 660; i = i + 9) {
      noStroke();
      int a = int(random(255));
      int b = int(random(255));
      int c = int(random(255));
      fill(a,b,c);
      triangle(-520 + i*1.5, -500 + i, 480, 1500 - i*2, 1480 - i*1.5, -500 + i);
    }
}

