class Snake
{
  ArrayList<PVector> tail = new ArrayList<PVector>();
  PVector position = new PVector(100, 100);
  PVector velocity = new PVector(0, 0);
  boolean alive = true;

  Snake(int length)
  {
    for (int i = 0; i < length; ++i) {
      tail.add(new PVector(position.x,position.y));
    }
  }

  void update() {
    position.add(velocity);
    tail.add(0,new PVector(position.x, position.y));
    tail.remove(tail.size()-1);
  }

  void draw() {
    noStroke();
    fill(0, 255, 0);
    // Rysujemy snake'a
    for (int i = 0; i < tail.size(); ++i) {
      rect(tail.get(i).x, tail.get(i).y, 2, 2);
    }
    
  }

  boolean collide_with_red()
  {
    color_under_snake = get((int)snake.position.x, (int)snake.position.y);
    if (red(color_under_snake) > 170) 
    {
      return true;
    }
    else {
    return false; 
    }
  }

  boolean collide_with_border()
  {
    if (snake.position.x < 0 | snake.position.x > width | snake.position.y < 0 | snake.position.y > width)
    {
      return true;
    }
    else {
      return false;
    }
  }
}
