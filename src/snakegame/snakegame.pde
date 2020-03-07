// ---> Deklaracje typów
enum Game_state {start_screen, game, game_over};

// ---> Deklaracje zmiennych globalnych
Game_state game_state = Game_state.start_screen;
int punkty = 0;
int ilosc_malp = 50;
Malpa[] malpy = new Malpa[ilosc_malp];
Snake snake = new Snake();
color color_under_snake;

// Funkcja setup jest wykonywana 1 raz na początku programu
void setup()
{
  // rozdzielczosc okna gry
  size(960, 640);
  // poczatkowy kolor tla
  background(50);
  // tworzymy obiekty Malpa w pętli w ilosci ilosc_malp
  for (int i=0; i<ilosc_malp; i++){
    malpy[i]=new Malpa(random(155));
  }
}

// Funkcja draw jest wykonywana 60 razy na sekunde, 
// do zakończenia programu

void draw()
{
  switch (game_state) {
  // Kod wykonywany w czasie gry
  case game :
  {
    background(50);  
    for (int i=0; i<ilosc_malp; i++){
      malpy[i].rysuj_malpe();
    }

    if (snake.collide_with_red()) {game_state = Game_state.game_over;}
    if(snake.collide_with_border()) {game_state = Game_state.game_over;}
    snake.draw();
    snake.move();
    draw_points();
  }
  break;

  // Kod wykonywany dla ekranu startowego
  case start_screen :
  {
    PImage start_img;
    start_img = loadImage("../../assets/sprites/python_of_death.jpg");
    image(start_img, 0, 0, width, height);
    textSize(50);
    textAlign(CENTER);
    text("Wcisnij Klawisz aby zagrać",width/2,height/2);
  }
  break;	

  // Kod dla ekranu przegranej
  case game_over :
  {
    fill(255);
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    textSize(24);
    text("Press any key to try again", width/2, height/2 + 40);
  }
  break;	

  // Kod wykonywany jeśli zmiana stanu gry poszła by na manowce.
  default:
      print("Unknown game state!\n");
    break;	
  }
}

// kod w funkcji keyPressed jest wywoływany jeśli wciśnięty został klawisz
// na klawiaturze - zmienna keyCode trzyma informacje o tym jaki to klawisz
void keyPressed()
{
  if (keyCode == UP) {
    snake.velocity.x = 0;
    snake.velocity.y = -2;
  } else if (keyCode == DOWN) {
    snake.velocity.x = 0;
    snake.velocity.y = 2;
  } else if (keyCode == LEFT) {
    snake.velocity.x = -2;
    snake.velocity.y = 0;
  } else if (keyCode == RIGHT) {
    snake.velocity.x = 2;
    snake.velocity.y = 0;
  }
  else {
    print("unbinded key pressed!\n");
  }
  if (game_state == Game_state.start_screen | game_state == Game_state.game_over){
    game_state = Game_state.game;
  }
}

void draw_points()
{
  fill(0, 255, 0);
  textSize(14);
  text(punkty, snake.position.x+10, snake.position.y-5);
  punkty++;
}