float R = 255;
float G = 255;
float B = 255;

float x = 0;
float y = 0;

void setup(){
  size(500, 500);
  background(#7F8C8D);
}


void keyPressed() {
  
  if(key == 'a' || key == 'A'){
    background(#FFFFFF);
    R = random(255);
    G = random(255);
    B = random(255);
  }
  
  if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 3;
      if(x == -325){
        x = 325;
      }
    } else if (keyCode == RIGHT) {
      x = x + 3;
      if(x == 325){
        x = -325;
      }
    }
  }
  
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - 3;
      if(y == -325){
        y = 325;
      }
    } else if (keyCode == DOWN) {
      y = y + 3;
      if(y == 325){
        y = -325;
      }
    }
  }
}


void circulo(){
  fill(R, G, B);
  circle(x+250, y+250, 150);
}


void draw(){
  if(key == 'c' || key == 'C'){
    background(#7F8C8D);
    fill(#47D9EA);
    circle(width/2, height/2, 250);
  }
  
  else if(key == 'r' || key == 'R'){
    background(#7F8C8D);
    fill(#DCEA47);
    rectMode(CENTER);
    rect(width/2, height/2, 250, 150);
  }
  
  else if(key == 'b' || key == 'B'){
    background(#FFFFFF);
    R = 255;
    G = 255;
    B = 255;
    circulo();
  }
  
  else if(keyCode == UP ||keyCode == RIGHT ||keyCode == LEFT ||keyCode == DOWN || key == 'a' || key == 'A'){
    background(#FFFFFF);
    circulo();
  }
}
