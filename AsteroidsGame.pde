//your variable declarations here
Spaceship BrockPurdy;
Star[] JakeMoody;
ArrayList <Asteriod> NickBosa = new ArrayList <Asteriod>();
ArrayList <Bullet> TrentWilliams = new ArrayList<Bullet>();
public void setup() 
{
  size(900, 600);
  BrockPurdy = new Spaceship();
  JakeMoody = new Star[200];
  for(int i = 0; i < JakeMoody.length; i++){
  JakeMoody[i] = new Star();
  }
  for(int i = 0; i < 35; i++){
  NickBosa.add(new Asteriod(17));
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
  
  for(int i = 0; i < NickBosa.size(); i++){
  NickBosa.get(i).show();
  NickBosa.get(i).move();
  for(int j = 0; j < TrentWilliams.size(); j++){
   //System.out.println(i);
   //System.out.println(NickBosa.size());
   //System.out.println(j);
   //System.out.println(TrentWilliams.size());
   //System.out.println("");
  if(i >= 0 &&  dist((float)TrentWilliams.get(j).getCenterX(), (float)TrentWilliams.get(j).getCenterY(), (float)NickBosa.get(i).getCenterX(), (float)NickBosa.get(i).getCenterY())<20){
  
    
  if (NickBosa.get(i).getSz() == 17){
  NickBosa.add(new Asteriod(10));
  NickBosa.add(new Asteriod(10));
  
  NickBosa.get(NickBosa.size() - 2).setCenterX(NickBosa.get(i).getCenterX());
  NickBosa.get(NickBosa.size() - 2).setCenterY(NickBosa.get(i).getCenterY());
  NickBosa.get(NickBosa.size() - 1).setCenterX(NickBosa.get(i).getCenterX());
  NickBosa.get(NickBosa.size() - 1).setCenterY(NickBosa.get(i).getCenterY());
  
  NickBosa.remove(i);
  
  i--;
  } else {
  NickBosa.remove(i);
  i--;
  }
  
  TrentWilliams.remove(j);
  j--;
  }
  }
  }
  
  for(int i = 0; i < TrentWilliams.size(); i++){
  TrentWilliams.get(i).show();
  TrentWilliams.get(i).move();
  if (TrentWilliams.get(i).getCenterX() < 0 || TrentWilliams.get(i).getCenterX() > width || TrentWilliams.get(i).getCenterY() < 0 || TrentWilliams.get(i).getCenterY() > height){
  TrentWilliams.remove(i);
  i--;
  }
  
  
  
  }
  
  
  
  
  if(NickBosa.size() == 0){
  background(0);
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text("YOU WIN", width/2, height/2);
  }
}

void keyPressed(){
  if (key == 'h'){
  BrockPurdy.hyperspace();
  }
  if (key == 'r'){
  BrockPurdy.accelerate(Math.random()*.13);
    
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
   for(int i = 0; i < 60; i++){
  BrockPurdy.turn(-.2);
   }
  }
  if (keyCode == RIGHT){
  for(int i = 0; i < 60; i++){
  BrockPurdy.turn(.2);
   }
  }
  if (key == ' '){
  TrentWilliams.add(new Bullet(BrockPurdy));
  TrentWilliams.get(TrentWilliams.size()-1).accelerate(6);
  }
  if (key == 'y'){
   for(int i = 0; i < NickBosa.size(); i++){
   NickBosa.remove(i);
   i--;
   }
  }
}
