ArrayList <Spaceship> Jome;
ArrayList <Bullet> ammo = new ArrayList <Bullet>(); 
ArrayList <Asteroid> Ama;
Star[] sky = new Star[250];
public void setup() {
  size(500, 500);
  background(0); 
  frameRate(60);
  Ama = new ArrayList <Asteroid>();
  Jome = new ArrayList <Spaceship>();
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int n = 0; n < 25; n++) {
    Ama.add(new Asteroid());
  }
  for (int n = 0; n < 6; n++) {
    Jome.add(new Spaceship());
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < Ama.size(); i++) {
    float d = dist((float)Jome.get(i).getCenterX(), (float)Jome.get(i).getCenterY(), (float)Ama.get(i).getCenterX(), (float)Ama.get(i).getCenterY());
    if (d < 25)
    Ama.remove(i);
  }
  for (int i = 0; i < ammo.size(); i++) {
    float d = dist((float)ammo.get(i).getCenterX(), (float)ammo.get(i).getCenterY(), (float)Ama.get(i).getCenterX(), (float)Ama.get(i).getCenterY());
    if (d < 35)
    Ama.remove(i);
  }
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for (int i = 0; i < Jome.size(); i++)
  {
    Jome.get(i).move();
    Jome.get(i).show(); 
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
}

public void keyPressed()
{
  if (key == 'a') {
    Jome.get(i).turn(-10);
  } else if (key == 'd') {
    Jome.get(i).turn(10);
  } else if (key == 'w') {
    Jome.get(i).accelerate(2);
  } else if (key == 's') {
    Jome.get(i).accelerate(-2);
  } else if (key == 'f') {
    Jome.get(i).setXspeed(15);
    Jome.get(i).setYspeed(15);
  } else if (key == 'h') {
    Jome.get(i).hyperspace();
  }
}
