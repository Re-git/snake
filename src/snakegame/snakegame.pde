// ---> Deklaracje zmiennych globalnych

int punkty = 0;
int ilosc_malp = 50;
color color_under_snake;
Malpa[] malpy = new Malpa[ilosc_malp];
Snake snake = new Snake();

// Funkcja setup jest wykonywana 1 raz na początku programu
void setup()
{
  size(600, 600);
  background(50);
  for (int i=0; i<ilosc_malp; i++)
  {
    malpy[i]=new Malpa(random(155));
  }
}

// Funkcja draw jest wykonywana 60 razy na sekunde, 
// do zakończenia programu
void draw()
{
  background(50);
  
  for (int i=0; i<ilosc_malp; i++)
  {
    malpy[i].rysuj_malpe();
  }


  fill(0, 255, 0);
  text(punkty, snake.position.x+10, snake.position.y-5);
  punkty++;

  color_under_snake = get((int)snake.position.x, (int)snake.position.y);
  if (red(color_under_snake) > 200 )
  {
    fill(255);
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    noLoop();
  }

//dodałem border collision ~Kacper
if (snake.position.x < 0){
  game_over();
}  else if (snake.position.x > width){
  game_over();
}  else if (snake.position.y < 0){
  game_over();
}  else if (snake.position.y > width){
  game_over();
}
  
  
  snake.draw();
  snake.move();
}

// funkcja keyPressed jest wywoływana jeśli wciśnięty został klawisz
// na klawiaturze
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP) {
      snake.velocity.x = 0;
      snake.velocity.y = -1;
    } else if (keyCode == DOWN) {
      snake.velocity.x = 0;
      snake.velocity.y = 1;
    } else if (keyCode == LEFT) {
      snake.velocity.x = -1;
      snake.velocity.y = 0;
    } else if (keyCode == RIGHT) {
      snake.velocity.x = 1;
      snake.velocity.y = 0;
    }
  } else {
    print("hello\n");
  }
}

void game_over()
{
    fill(255);
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    noLoop();
}
