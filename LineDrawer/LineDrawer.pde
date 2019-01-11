ArrayList x = new ArrayList();
ArrayList y = new ArrayList();


void setup(){
 size(1500,800);
 x.add(0, mouseX);
 y.add(0, mouseY);
}

void draw(){
  background(0);
  if (Float.parseFloat(x.get(0).toString()) != mouseX){
  x.add(0, mouseX);
  y.add(0, mouseY);
  }
  
  if (x.size()>100){
    x.remove(x.size()-1);
  }
  if (y.size()>100){
    y.remove(x.size()-1);
  }
  beginShape();
  noFill();
  stroke(255);
  for(int i=0; i < x.size()-1; i++){
    vertex(Float.parseFloat(x.get(i).toString()),Float.parseFloat(y.get(i).toString()));
  }
  endShape();
}
