void squares(){
change = change + 15;
//float n = noise(change) * 250;
translate(500,0);

for(int i=0; i<num; i++){
stroke(255,0,0);
noFill();
sz = i*step;
float lineEnd1 = map(sin(speed*(i*0.2)), -1, 1, 0, 960);
box(lineEnd1);
}

for(int i=0; i<num; i++){
stroke(255,0,0);
noFill();
sz = i*step;
float lineEnd2 = map(sin(speed*(i*0.2)), -1, 1, 960, 0);
box(lineEnd2);

camera(map(posX,0,960,-1000,2000), posY, 220.0, // eyeX, eyeY, eyeZ
        0.0, 0.0, 0.0, // centerX, centerY, centerZ
        0.0, 1.0, 0.0); // upX, upY, upZ
}}