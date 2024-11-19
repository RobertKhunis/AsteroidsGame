//your variable declarations here
Spaceship BrockPurdy;
Star[] JakeMoody;
public void setup() 
{
  size(900, 600);
  BrockPurdy = new Spaceship();
  JakeMoody = new Star[200];
  for(int i = 0; i < JakeMoody.length; i++){
  JakeMoody[i] = new Star();
  }
}
 

public void draw() 
{
  BrockPurdy.move();
  background(0);
  BrockPurdy.show();
  BrockPurdy.move();
  for(int i = 0; i < JakeMoody.length; i++){
  JakeMoody[i].show();
  }
}

void keyPressed(){
  if (key == 'h'){
  BrockPurdy.hyperspace();
  }
  if (key == 'r'){
  BrockPurdy.accelerate(Math.random()*.3);
  }
   if (key == 'd'){ 
     BrockPurdy.setCenterX(10);
  }
  if (key == 'a'){ 
    BrockPurdy.setCenterX(-10);
  }
  if (key == 's'){ 
     BrockPurdy.setCenterY(10);
  }
  if (key == 'w'){ 
    BrockPurdy.setCenterY(-10);
  }
  if (keyCode == LEFT){
  BrockPurdy.turn(-10);
  }
  if (keyCode == RIGHT){
  BrockPurdy.turn(10);
  }
}

