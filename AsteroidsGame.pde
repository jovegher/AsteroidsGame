Spaceship Jome;
ArrayList <Bullet> ammo = new ArrayList <Bullet>(); 
ArrayList <Asteroid> Ama;
Star[] sky = new Star[250];
public void setup() {
  size(500, 500);
  background(0); 
  frameRate(60);
  Ama = new ArrayList <Asteroid>();
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int n = 0; n < 25; n++) {
    Ama.add(new Asteroid());
  }
  Jome = new Spaceship();
}

public void draw() 
{
  background(0);
  for (int i = 0; i < Ama.size(); i++) {
    float d = dist((float)Jome.getCenterX(), (float)Jome.getCenterY(), (float)Ama.get(i).getCenterX(), (float)Ama.get(i).getCenterY());
    if (d < 25)
    Ama.remove(i);
  }
  for (int i = 0; i < Ama.size(); i++) {
    float d = dist((float)(ammo.get(i).getCenterX()), (float)ammo.get(i).getCenterY(), (float)Ama.get(i).getCenterX(), (float)Ama.get(i).getCenterY());
    if (d < 20)
    Ama.remove(i);
  }
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for (int k = 0; k < Ama.size(); k++)
  { 
    Ama.get(k).move();
    Ama.get(k).show();
  }
  for (int i = 0; i < ammo.size(); i++) {
    ammo.get(i).move();
    ammo.get(i).show();
  }
  Jome.move();
  Jome.show();
}

public void keyPressed()
{
  if (key == 'a') {
    Jome.turn(-10);
  } else if (key == 'd') {
    Jome.turn(10);
  } else if (key == 'w') {
    Jome.accelerate(2);
  } else if (key == 's') {
    Jome.accelerate(-2);
  } else if (key == 'f') {
    Jome.setXspeed(15);
    Jome.setYspeed(15);
  } else if (key == 'h') {
    Jome.hyperspace();
  } else if (key == ' ') {
    ammo.add(new Bullet(Jome));
  }
}
