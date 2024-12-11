class Bullet extends Floater{
Bullet(Spaceship theShip){
myCenterX = theShip.getCenterX();
myCenterY = theShip.getCenterY();
myXspeed = theShip.getXspeed();
myYspeed = theShip.getYspeed();
myPointDirection = theShip.getPointDirection();
myColor = color(255, 0, 0);

}


public void show(){

noStroke();
fill(255, 0, 0);
ellipse((float)myCenterX, (float)myCenterY, 10,10);
}

public void move(){
  
myCenterX += myXspeed;    
myCenterY += myYspeed;  

}

public double getCenterX(){
    return myCenterX;
    }
    
public double getCenterY(){
    return myCenterY;
}

}
