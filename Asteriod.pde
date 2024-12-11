class Asteriod extends Floater{
  private double rotSpeed;
  private double savesz = 0;
public Asteriod(double sz){
  corners = 8; 
  xCorners = new double[corners]; 
  yCorners = new double[corners]; 
  xCorners[0] = (double)-2/10 * sz; 
  yCorners[0] = (double)-11/10 * sz; 
  xCorners[1] = (double)2/10 * sz; 
  yCorners[1] = (double)-9/10 * sz; 
  xCorners[2] = (double)3/10 * sz; 
  yCorners[2] = (double)-4/10 * sz;
  xCorners[3] = (double)9/10 * sz; 
  yCorners[3] = (double)2/10 * sz; 
  xCorners[4] = (double)1/10 * sz; 
  yCorners[4] = (double)4/10 * sz; 
  xCorners[5] = (double)-9/10 * sz; 
  yCorners[5] = (double)13/10 * sz;
  xCorners[6] = (double)-10/10 * sz; 
  yCorners[6] = (double)-2/10 * sz;
  xCorners[7] = (double)-6/10 * sz; 
  yCorners[7] = (double)-9/10 * sz;
  myColor = 120;
  myCenterX = Math.random() * 900;
  myCenterY = Math.random() * 600;
  myXspeed = (Math.random() * 1.5)-0.75;
  myYspeed = (Math.random() * 1.5)-0.75;
  myPointDirection = Math.random() * 360;
  rotSpeed = Math.random() * 7;
  savesz = sz;
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

public double getSz(){
return savesz;
}


public void setCenterX(double x){
myCenterX = x;
}

public void setCenterY(double y){
myCenterY = y;
}



}
