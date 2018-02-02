PImage img, img_buffer;

void setup(){
  surface.setResizable(true);
  img = loadImage("longhorn.png");
  img_buffer = loadImage("longhorn.png");
  surface.setSize(img.width, img.height);
}

void draw(){
  sharpen();
  noLoop();
}

void sharpen(){
  int idx = 0;
  float[][] matrix = {{0,-1,0},{-1,5,-1},{0,-1,0}};
  img.loadPixels();
  for(int x=1;x<img.width-1;x++){
    for(int y=1;y<img.height-1;y++){
      idx = x * img.height + y;
      float red = red(img.pixels[idx]);
      float green  = green(img.pixels[idx]);
      float blue = blue(img.pixels[idx]);
      img.pixels[idx] = color(red, green, blue+100);
    }
  }
  img_buffer.updatePixels();
  image(img_buffer, 0, 0);
}