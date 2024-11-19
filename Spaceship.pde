class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 6; 
  xCorners = new int[corners]; 
  yCorners = new int[corners]; 
  xCorners[0] = 20; 
  yCorners[0] = 0; 
  xCorners[1] = 10; 
  yCorners[1] = 8; 
  xCorners[2] = -12; 
  yCorners[2] = 6;
  xCorners[3] = -6; 
  yCorners[3] = 0; 
  xCorners[4] = -12; 
  yCorners[4] = -6; 
  xCorners[5] = 10; 
  yCorners[5] = -8;
  myColor = color(255);
  myCenterX = width/2;
  myCenterY = height/2;
  myPointDirection = 0;
  myXspeed = 0;
  myYspeed = 0;
    }
    
  
    
    public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myPointDirection = ((Math.random() * 360));
    
    }
    
    
    
    public void setCenterY(double y){
    myCenterY += y;
    if(myYspeed>0){
    myYspeed-=.5;
    } else {
    myYspeed = 0;
    }
    }
    
    public void setCenterX(double x){
    myCenterX += x;
    if(myXspeed>0){
    myXspeed-=.5;
    } else {
    myXspeed = 0;
    }
    }
    
    
    public double getCenterX(){
    return myCenterX;
    }
    
    public double getCenterY(){
    return myCenterY;
    }
}
