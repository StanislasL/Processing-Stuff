Matche[] match = new Matche[20];
Player play1 =new Player();
boolean turn=true;
int coups=0;

void setup(){
  size(1600,800);
  for(int i = 0; i <match.length; i++){
    match[i]= new Matche();  
    match[i].X=100+70*i;
    match[i].state=true;
    
  }
  

}
void mousePressed(){
  if(mouseX>100 && mouseX<1600 && mouseY>200 && mouseY<600){
    changeState();
  }
  if(mouseX>650 && mouseX<900 && mouseY>700 && mouseY<900){
  background(0);
  nextTurn();
  }
}

void nextTurn(){
  play1.staate =! play1.staate;
  coups=0;
}

void changeState(){
  int i =floor(mouseX/70);
  if(i-1<match.length && coups<3){
    match[i-1].state=false;
    coups ++;
  }
}
void bouttonTour(){
    String s ="Next Turn";
    fill(255);
    textSize(48);
    text(s, 650, 700, 900, 900);  // 800,700
}
void draw(){
  background(50);
  bouttonTour();
  play1.update();
  for(int i = 0; i <match.length; i++){
    match[i].update();
  
  }


}
