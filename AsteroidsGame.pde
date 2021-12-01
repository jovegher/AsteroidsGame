Spaceship Jome;
Asteroid Ama;
Star[] sky = new Star[250];
public void setup() {
  size(500, 500);
  background(0); 
  frameRate(60);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  Jome = new Spaceship();
  Ama = new Asteroid();
}

public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  Jome.move();
  Jome.show();
  Ama.move();
  Ama.show();
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
  }
}
