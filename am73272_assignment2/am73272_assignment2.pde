PImage img, img_buffer;

void setup(){
  surface.setResizable(true);
  img = loadImage("mountain.jpg"); 
  img_buffer = loadImage("mountain.jpg");
  surface.setSize(img.width, img.height);
}

void draw(){
  image(img_buffer,0,0);
  float[][] no_filter = {{0,0,0},{0,1,0},{0,0,0}};
  float[][] cont_filter = {{.11,.11,.11},{.11,.11,.11},{.11,.11,.11}};
  float[][] gauss_filter = {{.0625,.125,.0625},{.125,.25,.125},{.0625,.125,.0625}};
  if(keyPressed == true){
    //No filter
    if(key == '0'){
      apply_filter(no_filter, key);
    }
    
    //Grayscale
    if(key == '1'){
      apply_filter(no_filter, key);
    }
    
    //Contrast
    if(key == '2'){
      colorMode(HSB,360,100,100);
      apply_filter(cont_filter, key);
    }
    
    //Gaussian Blur
    if(key == '3'){
      apply_filter(gauss_filter, key);
    }
    
    //Sobel Operator
    if(key == '4'){
      apply_filter(no_filter, key);
    }
  } 
}

void apply_filter(float[][] filter, char num){
  if(num == '0'){
    img_buffer.copy(img,0,0,img.width,img.height,0,0,img_buffer.width,img_buffer.height);
    return;
  }
  int idx = 0;
  float red = 0;
  float green = 0;
  float blue = 0;
  float hue = 0;
  float saturation = 0;
  float value = 0;
  float redx = 0;
  float greenx = 0;
  float bluex = 0;
  float redy = 0;
  float greeny = 0;
  float bluey = 0;
  float[][] gx = {{-1,0,1},{-2,0,2},{-1,0,1}};
  float[][] gy = {{-1,-2,-1},{0,0,0},{1,2,1}};
  img.loadPixels();
  for(int x=0;x<img.width;x++){
    for(int y=0;y<img.height;y++){
      if((x==0||x==img.width-1)||(y==0||y==img.height-1)){
        continue;
      }
      red = 0;
      green = 0;
      blue = 0;
      redx = 0;
      greenx = 0;
      bluex = 0;
      redy = 0;
      greeny = 0;
      bluey = 0;
      if(num == '1'){
        idx = x+y*img.width;
        red = red(img.pixels[idx]);
        green = green(img.pixels[idx]);
        blue = blue(img.pixels[idx]);
        float gray = (red+green+blue) / 3;
        img_buffer.pixels[x+y*img.width] = color(gray,gray,gray);
        continue;
      }
      if(num == '2'){
        idx = x+y*img.width;
        hue = hue(img.pixels[idx]);
        saturation = saturation(img.pixels[idx]);
        value = brightness(img.pixels[idx]);
        if(value<60){
          value -= 5;
        }
        else{
          value += 5;
        }
        value = constrain(abs(value),0,100);
        img_buffer.pixels[idx] = color(hue,saturation,value);
        continue;
      }
      for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
          idx = (x+i-1) + img.width * (y+j-1);
          if(num == '4'){
            redx += red(img.pixels[idx]) * gx[i][j];
            greenx += green(img.pixels[idx]) * gx[i][j];
            bluex += blue(img.pixels[idx]) * gx[i][j];
            redy += red(img.pixels[idx]) * gy[i][j];
            greeny += green(img.pixels[idx]) * gy[i][j];
            bluey += blue(img.pixels[idx]) * gy[i][j];
            red = sqrt(sq(redx)+sq(redy));
            green = sqrt(sq(greenx)+sq(greeny));
            blue = sqrt(sq(bluex)+sq(bluey));
          }
          else{
            red += red(img.pixels[idx]) * filter[i][j];
            green += green(img.pixels[idx]) * filter[i][j];
            blue += blue(img.pixels[idx]) * filter[i][j];
          }
        }
      }
      red = constrain(abs(red),0,255);
      green = constrain(abs(green),0,255);
      blue = constrain(abs(blue),0,255);
      
      img_buffer.pixels[x+y*img.width] = color(red,green,blue);
      
    }
  }
  img_buffer.updatePixels();
  image(img_buffer, 0, 0);
  colorMode(RGB,255,255,255);
}