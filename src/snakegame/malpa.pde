class Malpa
{
  float x;
  float y;
  float size;
  int fade = 0;
  int fade_speed = 1;

  Malpa(float s)
  {
    x = random(width);
    y = random(height);
    size = random(10,100);
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
    }
    
    fill(fade, 0, 0);
    textSize(size);
    text("@",this.x, this.y);    
    fade= fade+fade_speed;
  }
}
