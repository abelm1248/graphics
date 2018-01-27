int x = 0;
int y = 255;
int r, g, b = 0;
color blue = color(0, 0, 255);
color red = color(255, 0, 0);
color[] colors = {blue, red};
String[] types = {"ADD", "SUBTRACT", "LIGHTEST", "DARKEST", "MULTIPLY"};

void setup(){
  size(765, 500);
  background(255);
}

void draw(){
  strokeWeight(1);
  fill(colors[x%2]);
  ellipse(250, 100, 100, 100);
  strokeWeight(10);
  stroke(r, g, b);
  point(x, y);
  if(r<255){
    r++;
  }
  else if(g<255){
    g++;
  }
  else if(b<255){
    b++;
  }

  //ADD SUBTRACT LIGHTEST DARKEST MULTIPLY
  blendMode(MULTIPLY);

  x++;
}