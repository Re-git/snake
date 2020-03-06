class Malpa
{
  float x;
  float y;
  float sizeX;
  float sizeY;
  int fade = 0;
  int fade_speed = 1;

  Malpa(float s)
  {
    x = random(width);
    y = random(height);
    sizeX = random(100);
    sizeY = random(100);
    fade = int(s);
  }

  void rysuj_malpe()
  {
    if (fade>255)
    {
      fade=0;
      fade_speed = int(random(1, 5));
      x = random(width);
      y = random(height);
      sizeX = random(100);
      sizeY = random(100);
    }
    
    noStroke();
    fill(fade, 0, 0);
    rect(this.x, this.y, sizeX, sizeY);
    
    fade= fade+fade_speed;
  }
}
