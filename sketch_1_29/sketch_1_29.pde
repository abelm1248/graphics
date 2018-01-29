void setup(){
  size(500,500);
}

void draw(){
  noStroke();
  int a = 200;
  int b = 100;
  int c = 200;
  colorMode(RGB, 255,255,255);
  fill(a,b,c);
  rect(0,0,500,250);
  colorMode(HSB, 360,100,100);
  fill(a,b,c);
  rect(0,250,500,250);
}