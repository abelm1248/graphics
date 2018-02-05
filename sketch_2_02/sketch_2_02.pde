void setup(){
  size(500,500);
  strokeWeight(10);
  stroke(127.5);
}

void draw(){
  /***
  if(mousePressed == true){
    if(mouseButton == RIGHT){
      background(0);
    }
    else{
      background(255);
    }
  }
  if(keyPressed == true){
    ellipse(mouseX,mouseY,50,50);
  }
  ***/
}

void mousePressed(){
  if(mouseButton == LEFT){
    background(255);
  }
  else{
    background(0);
  }
}

void mouseMoved(){
  point(mouseX,mouseY);
}

void keyPressed(){
  rect(mouseX,mouseY,100,100);
}