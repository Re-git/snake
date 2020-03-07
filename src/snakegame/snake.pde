class Snake
{
  PVector position = new PVector(100, 100);
  PVector velocity = new PVector(0, 0);
  boolean alive = true;

  void move() {
    position.add(velocity);
  }

  void draw() {
    fill(0, 255, 0);
    rect(position.x, position.y, 5, 5);
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
