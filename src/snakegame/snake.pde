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
}
