PFont courier;
int x = 20;
int y = 30;

void setup(){
  size(500,500);
  courier = createFont("Courier", 32);
  textFont(courier);
}

void draw(){
  
}

void keyPressed(){
  if(key == ENTER || key == RETURN){
    y += 25;
    x = 0;
  }
  if(key == BACKSPACE){
    
  }
  text(key,x,y);
  x += 17; //key.textWidth();
}