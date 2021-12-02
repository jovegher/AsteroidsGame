Spaceship Jome;
Asteroid[] Ama;
Star[] sky = new Star[250];
public void setup() {
  size(500, 500);
  background(0); 
  frameRate(60);
  Ama = new Asteroid[25];
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int n = 0; n < Ama.length; n++) {
  Ama[n] = new Asteroid();
  }
  Jome = new Spaceship();
}

public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for (int k = 0; k < Ama.length; k++)
  { 
    Ama[k].move();
    Ama[k].show();
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
  }
}
