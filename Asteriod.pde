class Asteriod extends Floater{
  private double rotSpeed;
public Asteriod(){
  corners = 8; 
  xCorners = new int[corners]; 
  yCorners = new int[corners]; 
  xCorners[0] = -2; 
  yCorners[0] = -11; 
  xCorners[1] = 2; 
  yCorners[1] = -9; 
  xCorners[2] = 3; 
  yCorners[2] = -4;
  xCorners[3] = 9; 
  yCorners[3] = 2; 
  xCorners[4] = 1; 
  yCorners[4] = 4; 
  xCorners[5] = -9; 
  yCorners[5] = 13;
  xCorners[6] = -10; 
  yCorners[6] = -2;
  xCorners[7] = -6; 
  yCorners[7] = -9;
  myColor = 120;
  myCenterX = Math.random() * 900;
  myCenterY = Math.random() * 600;
  myXspeed = (Math.random() * 1.5)-0.75;
  myYspeed = (Math.random() * 1.5)-0.75;
  myPointDirection = Math.random() * 360;
  rotSpeed = Math.random() * 7;
}

public void move(){
turn(rotSpeed);
super.move();
}

public double getCenterX(){
    return myCenterX;
    }
    
public double getCenterY(){
    return myCenterY;
}

}
