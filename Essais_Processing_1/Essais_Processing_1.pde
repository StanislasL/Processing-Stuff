float x;
float y;
float speedx;
float speedy;
float cx;
float cy;

void setup(){
size(500,500);
background(0);
fill(255);
x =250;
y=250;

ellipse(x,y,20,20);


}

void draw(){
  fill(255);
  ellipse(250,250,10,10);
  cx = map(x, 0, width, 0, 175);
  cy = map(y, 0, height, 0, 175);
  fill(cx,cy, cy);
  speedx = map(mouseX,0, width, -10,10);
  x=x+speedx;
  if (x<0){
  x=500;
  }
  else{
  background(0);
  ellipse(x,y,x,x);
  }
  if (x>500){
  x=0;
  }
  else{
  background(0);
  ellipse(x,y,x,x);
  }
  speedy = map(mouseY,0, height, -10,10);
  y=y+speedy;
  if (y<0){
  y=500;
  }
  else{
  background(0);
  ellipse(x,y,x,x);
  }
  if (y>500){
  y=0;
  }
  else{
  background(0);
  ellipse(x,y,x,x);
  }
  background(0);
  noStroke();
  ellipse(mouseX,mouseY,20,20);


}