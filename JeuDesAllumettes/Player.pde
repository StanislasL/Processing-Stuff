class Player{
  boolean staate=true;
  int num=1;
  
  public void update(){
    if(staate){num=1;}
    else{num=2;}
    String s = "Player " + num;
    fill(255);
    textSize(32);
    text(s, 700, 40, 900, 240);  // Text wraps within text box
  }
  
}
