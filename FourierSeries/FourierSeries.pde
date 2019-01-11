float t =0;
float x=0;
float y=0;
float prevx;
float prevy;
float radius;
ArrayList wave = new ArrayList();
int i=0;
int harmonics =3;

void setup() {
  size(1500, 800); 
  background(0);
}


void draw() {
  background(0);
  translate(300, 400);

  float x = 0;
  float y = 0;

  for (int i = 0; i < harmonics; i++) {
    float prevx = x;
    float prevy = y;

    float n = 2*i +1 ;
    float radius = 150 * (4 / (n * PI));
    x += radius * cos(n * t);
    y += radius * sin(n * t);

    stroke(255, 100);
    noFill();
    ellipse(prevx, prevy, radius * 2, radius * 2);
    stroke(255);
    line(prevx, prevy, x, y);
  }
  

  
  if(wave.size()<900){
    wave.add(y);
  }
  beginShape();
  for (int j = 0; j < wave.size(); j++) {
     vertex(j+300, Float.parseFloat(wave.get(j).toString()));

  }
  endShape();
  line(x,y,wave.size()+300, Float.parseFloat(wave.get(wave.size()-1).toString()));
 
  t = t+0.02;
}
