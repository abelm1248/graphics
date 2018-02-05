void setup() {
  size(500, 500);
}

void draw() {
  //declare variables
  color orange = color(237,118,26);
  color white = color(255,255,255);
  color buns = color(234, 178, 92);
  color patty = color(121, 93, 51);
  color cheese1 = color(250, 227, 13);
  color cheese2 = color(242, 241, 235);
  color lettuce = color(11,142,21);
  color tomato = color(255,64,26);
  color bacon = color(155,39,39);
  color baconOutline = color(100,11,11);
  
  //background
  noStroke();
  fill(orange);
  rect(0,0,100,500);
  rect(200,0,100,500);
  rect(400,0,100,500);
  fill(white);
  rect(100,0,100,500);
  rect(300,0,100,500);
  stroke(1);
  
  //bottom bun
  fill(buns);
  strokeWeight(1);
  rect(50, 300, 400, 40);

  //cheese #1
  fill(cheese1);
  triangle(225, 300, 275, 300, 250, 320);

  //patty #1
  fill(patty);
  strokeWeight(2);
  rect(60, 280, 380, 20);

  //cheese #2
  strokeWeight(1);
  fill(cheese2);
  triangle(90, 280, 160, 280, 100, 310);
  triangle(340, 280, 410, 280, 400, 310);

  //patty #2
  fill(patty);
  strokeWeight(2);
  rect(60, 260, 380, 20);
  
  //lettuce
  fill(lettuce);
  noStroke();
  arc(110,255,120,30,0,PI);
  arc(200,255,120,30,0,PI);
  arc(390,255,120,30,0,PI);
  arc(300,255,120,30,0,PI);
  stroke(1);
  
  //tomato
  fill(tomato);
  strokeWeight(1);
  rect(75,250,200,5);
  rect(240,250,200,5);
  
  //bacon
  fill(bacon);
  stroke(baconOutline);
  strokeWeight(3);
  quad(120,240,90,260,160,275,220,240);
  quad(300,240,350,275,420,265,400,240);

  //top bun
  fill(buns);
  strokeWeight(1);
  stroke(1);
  bezier(50, 250, 70, 140, 430, 140, 450, 250);
  line(50, 250, 450, 250);
}