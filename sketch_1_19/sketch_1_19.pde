int x1 = 100;
int y1 = 100;
int x2 = 200;
int y2 = 100;
int a = 20;
int b = 20;
int c = 20;
int d = 20;

void setup(){
  size(200, 200);
}

void draw(){
  point(x1, y1);
  //x1++;
  //y1++;
  line(x1, y1, x2, y2);
  //rect(a, b, c, d);
  //c++;
  //d++;
  //ellipse(a, b, c, d);
  int x3 = 175;
  int y3 = 150;
  //triangle(x1, y1, x2, y2, x3, y3);
  int x4 = 190;
  int y4 = 190;
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
  int start = 0;
  float stop = PI;
  arc(a, b, c, d, start, stop);
  //bezier(........);
  
}  