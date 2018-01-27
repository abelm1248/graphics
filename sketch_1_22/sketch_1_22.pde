int i = 0;
String[] modes = {"CORNER", "CORNERS", "CENTER", "RADIUS"};

void setup(){
  size(200,200);
}

void draw(){
  //frameRate(30);
  stroke(100);
  fill(i);
  rect(50,50,50,50);
  i++;
  fill(200);
  ellipseMode(CENTER);
  ellipse(150,150,50,50);
  ellipse(160, 140, 10, 10);
  ellipse(140, 140, 10, 10);
  arc(150, 150, 20, 20, (5*PI)/4, (7*PI)/4);
  //ellipse(150,150,50,50);

}