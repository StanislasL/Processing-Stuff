class Matche{
  float X;
  boolean state;
  
  public void update(){
    if(state==true){
      fill(255);
    }
    else{
      fill(50);
    }
    rect(X,200,10,400);
  }

}
