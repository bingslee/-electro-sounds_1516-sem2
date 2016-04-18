int a;
int b;
int c;
int i;
int k;
int j;

void setup () {
  size(500, 500, P2D);
  //background(0);
}

void create () {

    noLoop();
    int a = int(random(255));
    int b = int(random(255));
    int c = int(random(255));
    fill(a, b, c);
    noStroke();
    quad(0, 500, 0, 480, 10, 20, 10);
    quad(0, 0, 20, 10, 250, 477.5, 250, 500);
    quad(250, 477.5, 250, 500, 500, 0, 480, 10);
  }
void draw () {
  background (255);
  create();
}
//noLoop();
//for (i = 0; i <80; i = i + 19) 


