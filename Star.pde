class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private float r, g, b;
  public Star(){
  myX = (int)(Math.random() * 900);
  myY = (int)(Math.random() * 600);
  r = (float)(Math.random()*255);
  g = (float)(Math.random()*255);
  b = (float)(Math.random()*255);
  }
  
  public void show(){
  //noStroke();
  noStroke();
  fill(r, g, b);
  ellipse(myX, myY, 3, 3);
  }
}
