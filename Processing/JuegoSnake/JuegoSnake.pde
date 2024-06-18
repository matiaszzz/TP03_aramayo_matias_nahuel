private Snake snake;
private Comida[] comidas;
//private Comida comida;
private boolean gameOver;
private int tiempo;

void setup() {
  size(600, 500);
  comidas = new Comida[1];
  comidas[0] = new Pajaro(new PVector(int(random(570)), int(random(450))),30);
  frameRate(5);
  snake = new Snake(new PVector(300, 250), new PVector(5, 5), 20);
  //comida = new Comida(new PVector(int(random(570)), int(random(450))));
  gameOver = false;
  tiempo = 60000;
}

void draw() {
  int fin = millis();
  background(#275518);
  stroke(255);
  if (!gameOver) {
    //comida.display();
    displayComidas();
    if (snake.comer(comidas[0].getPosicion())) {
      comidas[0] = new Pajaro(new PVector(int(random(570)), int(random(450))),30);
      //comida = new Comida(new PVector(int(random(570)), int(random(450))));
      snake.crecer();
    }
    snake.display();
    snake.mover();
    fill(0);
    textSize(30);
    text("Score: " + snake.getScore(), 10, 50);
    textSize(30);
    text("Tiempo: "+millis()/1000, 450, 50);
    if (fin > tiempo) {
      gameOver=true;
    }
  }
}

public void displayComidas(){
  for(Comida c:comidas){
    c.display();
  }
}
